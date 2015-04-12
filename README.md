# devbox
Building a portable docker based developer toolbox

* a versioned building block,
* continuously tested,
* extensible,
* portable,
* sharable.

Note: It is assumed that you have a Docker environment installed (or alternatively Boot2Docker). A good test is whether "docker ps" shows no errors.

## How to use the Devbox

To use the Devbox a X client is needed. We chose "X2GO". The client part must be available on your machine.

Start the Devbox container with `docker run -d  -P  cpt_igloo/devbox`.

Start the X2GO client and configure a session by taking care to setup

- the host to your boot2docker host (192.168.59.103)
- the login to the devbox main user (dockerx)
- the port to the assigned ssh port (use `docker ps` to display the redirected port for port 22)
- set the session to LXDE
- in the "Connection" tab, choose "LAN" connection speed
- in the "Input/output" tab, choose the display option that best suit your configuration.

Save the session, and start it. 
You will be prompted for a password. 
It is the same as the user name.

You will be prompted to accept the devbox public SSH key. 
If you restarted the container, the key might have changed and the SSH client will not like it.
Follow the instructions to accept the new public key.

If the system gives an error like "SSH daemon failed to open the application's public key", just
accept it by clicking on "OK". 
And, tadahh, your in business and connected to the GUI of your Devbox.




## How to build the Devbox


After getting the latest version of the box by cloning the Git repository, position yourself in the root of directory structure so that run the various commands.

To create the Devbox (and run the automatic validation tests) execute : 

 > make

To run the tests only, execute :
 > make test

To connect interactively to the Devbox, just execute :

 > make shell


## How to run the presentation 

(With Docker of course)

To start a containerized web server that will generate the presentation:

 > make presentation 

To display it, start your favourite browser and point it to the Docker IP, port 80 (the address is echoed on the screen once the container is started).



--- 

Tu l'as sûrement deja vécu, ami développeur/Full stack Engineer. Lors de l'accueil un nouveau collègue ou un stagiaire, il te faut consacrer 2 jours et une énergie sans précédent avant qu'il puisse "vraiment" travailler sur le projet.

Mettre au point et surtout maintenir un environnement de développement efficace et adapté a l'écosystème de votre équipe met du temps. Mais son apprentissage par le nouvel arrivant aussi. Et de plus la courbe d'apprentissage n'est pas linéaire. Conséquences: démotivation, planning décalé, frustration.

Et si on repensait tout cela avec les outils de notre métier ? L’environnement de développement comme une brique logicielle ?

* une brique versionnée,
* testée continuellement,
* Extensible,
* Portable,
* Partageable.

L'outil Docker, capable de solutionner ce type de problèmes pour les applications classiques, ouvre la voie à des approches novatrices: pourquoi ne pas mettre son environnement de développement dans un container portable ?

Au travers d'un workflow "classique" de développement, cette session présente :

* Comment assembler un environnement de dév. graphique dans un containeur Docker
* Comment l'utiliser efficacement
* Comment le partager sur un autre OS (Mac -> Linux) à un autre dévelopeur
* Des paradigmes nouveaux permis par Docker : "devbox in the cloud", "continously testing my devbox", etc.


Je peux monter ma propre devbox dans un Dockerfile dès maintenant
Je peux partager ma devbox avec mes collègues, indépendamment de leur PC de dév (Mac, Linux, Windows...)
Je peux appliquer mon processus de développement (SCM, TDD/BDD, Continous*) à ma devbox
Je ne vais plus vivre l'"onboarding" et le "project switching" comme des contraintes
