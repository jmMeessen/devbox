FROM debian:wheezy
MAINTAINER Damien DUPORTAL <damien.duportal@gmail.com>
MAINTAINER Jean-Marc MEESSEN <jean-marc@meessen-web.org>

ENV DEBIAN_FRONTEND noninteractive
ENV IDEA_VERSION=14.1.1

COPY x2go.list /etc/apt/sources.list.d/x2go.list

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
    wget\
    xfce4 \
    x2goserver \
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
  && ln -s /opt/idea/bin/idea.sh /usr/local/bin/

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
