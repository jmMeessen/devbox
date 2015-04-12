FROM debian:wheezy
MAINTAINER Damien DUPORTAL <damien.duportal@gmail.com>
MAINTAINER Jean-Marc MEESSEN <jean-marc@meessen-web.org>

ENV DEBIAN_FRONTEND noninteractive
ENV IDEA_VERSION=14.1.1
ENV MAVEN_VERSION=3.2.5
ENV FIREFOX_VERSION=37.0.1

COPY configs/x2go.list /etc/apt/sources.list.d/x2go.list

RUN apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    aptitude \
    byobu \
    build-essential \
    curl \
    htop \
    openjdk-7-jdk \
    openssh-server \
    software-properties-common \
    sudo \
    vim \
    wget
RUN apt-get install -y --no-install-recommends \
    lxde \
    x2goserver \
    x2golxdebindings \
    x2goserver-xsession \
    x2go-keyring \
  && echo "root:root" | chpasswd \
  && adduser --disabled-password --gecos "" dockerx \
  && adduser dockerx sudo \
  && echo "dockerx:dockerx" | chpasswd \
  && adduser dockerx x2gouser \
  && mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config \
  && sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
  && sed -i "s/#PasswordAuthentication/PasswordAuthentication/g" /etc/ssh/sshd_config \
  && chmod 1777 /dev/shm \
  && rm -rf /var/lib/apt/lists/* /var/cache/* /tmp/*

# Define working directory.
WORKDIR /data

RUN curl -L -o /tmp/idea.tgz https://download.jetbrains.com/idea/ideaIC-${IDEA_VERSION}.tar.gz \
  && tar -xzf /tmp/idea.tgz -C /opt/ \
  && mv /opt/idea* /opt/idea \
  && ln -s /opt/idea/bin/idea.sh /usr/local/bin/ \
  && rm -rf /tmp/*

# Install "maven"
RUN curl -L -o /tmp/maven.tgz http://apache.belnet.be/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && mkdir -p /opt/maven \
  && tar xzf /tmp/maven.tgz -C /opt/maven \
  && ln -s /opt/maven/apache-maven-${MAVEN_VERSION} /opt/maven/maven-latest \
  && rm -rf /tmp/*

COPY configs/user-env.sh /etc/profile.d/user-env.sh

RUN echo "dockerx ALL = NOPASSWD: ALL" > /etc/sudoers.d/dockerx

COPY configs/idea.desktop /usr/share/applications/idea.desktop
COPY configs/idea.png /opt/idea/idea.png

# Configure things for dockerx user
USER dockerx
COPY configs/lxde-main-panel /home/dockerx/.config/lxpanel/LXDE/panels/panel
USER root
COPY configs/idea.desktop /usr/share/applications/idea.desktop
COPY configs/idea.png /opt/idea/idea.png

RUN apt-get update && apt-get install -y --no-install-recommends libXrender1 libasound2 libdbus-glib-1-2 libgtk2.0-0 libpango1.0-0 libxt6 && apt-get remove -y iceweasel
RUN cd /opt; wget -O - \
    http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/latest/linux-x86_64/en-US/firefox-${FIREFOX_VERSION}.tar.bz2 | tar jx \
    && ln -s /opt/firefox/firefox /usr/local/bin/

COPY configs/firefox.desktop /usr/share/applications/firefox.desktop

EXPOSE 22


CMD ["/usr/sbin/sshd","-D"]
