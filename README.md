# devbox
Building a portable docker based developer toolbox

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
