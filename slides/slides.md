class: center, middle, inverse

# Devbox
.footnote[Brought to you by <br>D. <b><u>Duportal</u></b> and J-M <b><u>Meessen</u></b>]

---

# Agenda

1. Introduction

  - De quoi allons nous parler ?
  - Qui sommes nous ?
  - Qui êtes vous ?

2. Un peu de théorie ...

3. Des démos ...

---
layout: false
class: center, middle, inverse

# Introduction

---
layout: false
.left-column[
# Intro
  ## Qui sommes-nous ?
]
.right-column[

  ## Nous venons de Belgique, ...

]

---
layout: false
.left-column[
# Intro
  ## Qui sommes-nous ?
]
.right-column[

  ## Nous venons de Belgique, ...

  **le pays du chocolat...**

.center[![Chokotoff](pictures/chokotoff2.jpg)]

]

---
layout: false
.left-column[
# Intro
  ## Qui sommes-nous ?
]
.right-column[

  ## Nous venons de Belgique, ...

  **le pays de la bière...**

.center[![BièresBelges](pictures/bieresBelges.jpg)]

]

---
layout: false
.left-column[
# Intro
  ## Qui sommes-nous ?
]
.right-column[
  ## Jean-Marc MEESSEN

  ## Damien DUPORTAL
]

---
layout: false
.left-column[
# Intro
  ## Qui sommes-nous ?
  ## Remerciements
]
.right-column[
  ## Merci !
  * Organisateurs et bénévoles Mix-It 
  * à vous, de venir !
  * Aux personnes ayant réalisé et crus en ces outils
]

---
layout: false
.left-column[
# Pourquoi ce talk ?
]
.right-column[
  ## Pourquoi ce talk ?
  * J'ai participé à beaucoup d'aventures ces 30 dernières années.

  * Toujours aussi enthousiaste pour apprendre et partager
  
  * BUT, one of my big frustration : Wasted (unfocused energy) at the start of a every new adventure
]
???
"30 dernieres années" : 
  * aventures informatiques
  * au moins pour Jmm
  * beaucoup de belles victoires, des échecs...
  * des "jerks", mais surtout des gens géniaux

## enthousiastes
* admiratif des choses extraordinaires qu'il y "là dehors" 
* rendre la vie des gens plus facile et agréable
* Je suis fier de ce que je fais et je veux le partager (ex: new comers)
* J'espère pouvoir continuer à être enthousiaste et partageur au dela de ma penssion

---
layout: false
.left-column[
# Pourquoi ce talk ?
  ## Quel est le problème ?
]
.right-column[
  ## Quel est le problème ?
  * Wasted High power moment (high energy)
  * Setup of a work environement takes lot of time (comme une sortie de piste, dans les graviers)
  * perte du focus
  * Necessite d'avoir l'environement de DEV le plus riche possible (state of the art). Pas de nivellement par le bas.
  * très rapide à déployer et du premier coup
  * et je ne parle pas de l'env d'integration
  * Maintenance d'un environnement de dévelopement == douleur
    * "Just In Time" : c'est au moment des "onboardings" qu'on a découvre les problèmes, comportement homogène dans le temps
    * Maintenance et maJ : montée de version  de IDE / JDK / etc.
    * Coût : comment le mesurer pour l'anticiper voire le diminuer 
]

---
layout: false
.left-column[
# Pourquoi ce talk ?
  ## Quel est le problème ?
  ## Solutions ?
]
.right-column[
  ## Solutions "avant"

  * les terminaux sur le mainframe
  * les PC avec images (quid des utilisateurs nomades)
  * virtualisation avec Vagrant/VB par exemple

]

---
layout: false
.left-column[
# Pourquoi ce talk ?
  ## Quel est le problème ?
  ## Solutions ?
  ## Constat
]
.right-column[
  ## Constat

  * DEVBOX = TOOLBOX = Trousse à outils (=> trousse à outils + camion atelier)

  * Constat : même problèmes, donc mêmes solutions (on est "top marketeux", on fait des acronymes ah ah)
    * DaaT : Devbox as a Tool (comme avant)
    * DaaS : Devbox as a Software
    * DaaI : Devbox as an Infrastructure
    * DaaLt :Devbox as a Learning tool
]

---
layout: false
.left-column[
# Pourquoi ce talk ?
  ## Quel est le problème ?
  ## Solutions ?
  ## Constat
  ## Docker !
]
.right-column[
  ## Docker !

  * Docker résouds le pb de Matrix of hell
  * Docker contractualise
  * Docker est rapide
  * Docker est "à la mode"
    * rend des choses qu'on fesait depuis longtemps tres bon marche
      * utilisation du GPS
  * nouveau produits/nouvelles utilisations

]
---

template: inverse


# Utiliser les recettes de l'ingénierie logicielle *moderne*


---
layout: false
.left-column[
# "Full stack" Engineer

]
.right-column[
  ## "Full stack" Engineer

  Que disent les pratiques d'ingénieurie logicielle (plus ou moins) modernes ?
]

---
layout: false
.left-column[
# "Full stack" Engineer
  ## Code == Valeur

]
.right-column[
  ## "La vérité est dans le code"
  (http://programming-motherfucker.com)

  Utilisez des SCMs, préférerrez des décentralisés qui ouvre la voie à de nouvelles façons de travailler :

  FIXME : Image du graph Github pour *Github wokflow*
]

---
layout: false
.left-column[
# "Full stack" Engineer
  ## Code == Valeur
  ## "Nouvelles" pratiques

]
.right-column[
  ## "Nouvelles" pratiques

  N'ayons pas peur d'_essayer_, *plusieurs fois* toutes ces nouvelles façons de faire, sans être dogmatiques

  * Agile
  * TDD/BDD/Doc. as code
  * DevOps
]

---
layout: false
.left-column[
# "Full stack" Engineer
  ## Code == Valeur
  ## "Nouvelles" pratiques
  ## Continous*
]
.right-column[
  ## Continous*

  * Continous Integration
  * Continuous Testing (TDD right ?)
  * Cotinuous documentation
  * Continuous Benchmarking
  * Continuous delivery
 
]

---
template: inverse

# "Human stack"

![Default-aligned image](pictures/vitr.jpg)

---
layout: false
.left-column[
# "Full stack" Engineer
  ## Code == Valeur
  ## "Nouvelles" pratiques
  ## Continous*
  ## "Human Stack"
]
.right-column[
  ## "Human stack" 
    * (continuous and linear learning, trust, transparency, droit à l'erreur)
    * Compagnonage (on fabrique ses propres outils comme partie de l'apprentissage)
    * Eat your own dog food
 
]

---
template: inverse

# Démo Time !

---
layout: false
.left-column[
# Démo Time !
]
.right-column[
  ## Démo Time !

  * Contexte : spring boot "hello world" application
  * Java DK, Maven, IntelliJ Idea, Docker, Compose
  * https://github.com/jmMeessen/devbox
  * Use cases :
    * Onboarding
    * Developement simple basé sur Spring Boot
    * MaJ IDEA sans casser le dev workflow
    * Portabilité
    * ? Legacy (reprendre old applications)
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
]
.right-column[
  ## SCM :Git (on Github)

  * Public
  * Partagé
  * Pull-Request systématique (Github workflow)
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
]
.right-column[
  ## TDD/BDD

  Utilisation de [bats](https://github.com/sstephenson/bats) au maximum
  * BDD oriented :
FIXME : code example d'un test
  * Bash based : compromis "bootstrap rapide" vs. maintenabilité
  * Objectif pour une PR : test, puis impl à chaque fois !
  * Pragamtisme : ne pas tout tester non plus, par petits pas !
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
]
.right-column[
  ## Continuous*

  Utilisation de [CircleCI](https://circleci.com) :
  * Github-hook based (push == build)
  * Support de Docker
  * Configuration as a code
FIXME : extrai de circle.yml
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
]
.right-column[
  ## Docker stack

  Utilisation de [boot2docker](https://boot2docker.io) :
  * Mutli-plateforme (virtualbox)
  * Support officiel de Docker
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
]
.right-column[
  ## Cinématique

  Utilisation de [GNU Make](https://www.gnu.org/software/make/) :
  * Indépendance cinémtique / outils (passage à packer ou rocket ?)
  * Multi-platforme
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
]
.right-column[
  ## Demo 1 : 

  FIXME : schema global
 
]

---
template: inverse

# Demo 1

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
  ## Devbox as an infrastructure
]
.right-column[
  ## Données ?

  * Docker's data volume
  * Make backup
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
  ## Devbox as an infrastructure
]
.right-column[
  ## Connectivité Web 

  * Travailleur nomades, pauvres employé de SSI
  * Local ressources (proxy-cache, docker-registry, etc.)
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
  ## Devbox as an infrastructure
]
.right-column[
  ## Docker-compose ! 

FIXMe : docker.yml
 
]

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
  ## Devbox as an infrastructure
]
.right-column[
  ## Demo 2 : 

  FIXME : schema global
 
]

---
template: inverse

# Demo 2

---
layout: false
.left-column[
# Démo Time !
  ## Devbox as a code
  ## Devbox as an infrastructure
  ## Devbox 0 downtime
]
.right-column[
  ## Demo 3 : 

  => Update de qque chose (installation d'un package) avec version
  FIXME : schema global
 
]

---
template: inverse

# Demo 3

---
layout: false
.left-column[
# Conclusion
  ## Qu'à t'on appris ?
]
.right-column[
  ## Qu'à t'on appris ?

 * j'ai appris de nouvelles technos (amélioré ma pratique)
  * Docker
  * Test Driven SYSTEM development (DEVOPS) 
  * Bash and Linux skills
  * the Gitlab/Github way
  * confirmation que de la conception à la production, le flux est continu (mort aux silos)
  * apprentissage du travail communautaire/ OSS (des valeurs qui me sont très proches) aussi à distance.

* Notre intuition est correcte:
  * Encore rien rencontré de bloquant et très, très prometteur.
  * Il y a encore du travail
  * j'attend avec impatience l'épreuve du feu (situation réelle)

]

---
template: inverse

# The end
## Thanks ! Questions ?
