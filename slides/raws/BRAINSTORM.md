# Brainstorming pour la présentation

## Plan global (après travail de synthèse)

### Intro

* Présentations (nom, prénom, mail, githu, twitter, etc.) :
  * Worldline (la minute corporate)
  * Toi
  * Moi
* Remerciements (c'est important, c'est lié à nos personnalités) :
  * Mix It team
  * Docker people/ autre personnes nous ayant poussé sur ces pratiques
  * Public d'être là

### Why this talk ?

* seen a lot in nearly 30 years in IT
  * victories / failures
  * great peoples
* still as enthousiastic to learn/share
  * great stuff out there (admirative)
  * make people's life easier
  * I want to share why I am proud of what I do
  * hope to be able to continue even after retirement
* BUT, one of my big frustration
  * Wasted (unfocused energy) at the start of a every new adventure

### What is the problem ?


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

### Solutions ?

* j'ai connu
  * les terminaux sur le mainframe
  * les PC avec images (quid des utilisateurs nomades)
  * virtualisation avec Vagrant/VB par exemple

* DEVBOX = TOOLBOX = Trousse à outils (=> trousse à outils + camion atelier)

* Constat : même problèmes, donc mêmes solutions (on est "top marketeux", on fait des acronymes ah ah)
  * DaaT : Devbox as a Tool (comme avant)
  * DaaS : Devbox as a Software
  * DaaI : Devbox as an Infrastructure
  * DaaLt :Devbox as a Learning tool
* Docker
  * Docker résouds le pb de Matrix of hell
  * Docker contractualise
  * Docker est rapide
  * Docker est "à la mode"
    * rend des choses qu'on fesait depuis longtemps tres bon marche
      * utilisation du GPS
      * nouveau produits/nouvelles utilisations

* utiliser (naturellement) les recettes de l'ingénierie logicielle moderne

### We are "Full stack" Engineer, aren't we ?

Que disent les pratiques d'ingénieurie logicielle (plus ou moins) modernes ?

* (distributed) source management
* The tests drive the development
  * TDD/BDD
* Continous*
  * IC
  * Continuous testing
  * Continuous benchmarking
  * Continuous delivery

* "Nouvelles" pratiques - soft skills
  * Agile (itération, proche du besoin, réactivité)
  * DevOps (dev2prod, prod2dev, tendre vers l'iso prod, efficience en continuité avec l'agile)
  * "Human stack" (continuous and linear learning, trust, transparency, droit à l'erreur)
    ** Compagnonage (on fabrique ses propres outils comme partie de l'apprentissage)
    ** Eat your own dog food

### Explication de la solution

* Ce qui est necessaire pour comprendre la demo (sous forme de dessin)

* Comment fonctionne l'environement (structure)
  * boot2docker
  * le Devbox container
  * le data container

* Le processus de build et d'integration continue
  * comment BATS est appelé


### Démo

### Use cases

* Onboarding
* Developement simple basé sur Spring Boot
* MaJ IDEA sans casser le dev workflow
* Portabilité
* ? Legacy (reprendre old applications)

### What did we learnt ?

* Qu'as tu appris ?
* qu'ai-je appris ?


### ce que j'ai appris (Jmm)

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









## Damien



### Problème à résoudre

* Maintenance d'un environnement de dévelopement == douleur
  * "Just In Time" : c'est au moment des "onboardings" qu'on a découvre les problèmes, comportement homogène dans le temps
  * Maintenance et maJ : montée de version  de IDE / JDK / etc.
  * Coût : comment le mesurer pour l'anticiper voire le diminuer 
  * Humain : frustration, les "faiseurs" voudrait toujours qque. chose à la pointe, les "font-faire" ne voient pas ceci comme prioritaire (investissement donc ROI moyen/long terme)

### "Full stack" Engineer

Que disent les pratiques d'ingénieurie logicielle (plus ou moins) modernes ?

#### SCM

#### Testing

* TDD/BDD

#### Continous*

* IC
* Continuous testing
* Continuous benchmarking
* Continuous delivery

#### "Nouvelles" pratiques

* Agile (itération, proche du besoin, réactivité)
* DevOps (dev2prod, prod2dev, tendre vers l'iso prod, efficience en continuité avec l'agile)
* "Human stack" (continuous and linear learning, trust, transparency, droit à l'erreur)
  ** Compagnonage
  ** Eat your own dog food

### Que faire ? 

* Constat : même problèmes, donc mêmes solutions (on est "top marketeux", on fait des acronymes ah ah)
  * DaaT : Devbox as a Tool (comme avant)
  * DaaS : Devbox as a Software
  * DaaI : Devbox as an Infrastructure
  * DaaLt :Devbox as a Learning tool
* Why not Docker ? 
  * Docker résouds le pb de Matrix of hell
  * Docker contractualise
  * Docker est rapide
  * Docker est "à la mode"

### Démo

### Use cases

* Onboarding
* MaJ IDEA sans casser le dev workflow
* Portabilité
* Legacy (reprendre old applications)

### What did we learnt ?

* Qu'as tu appris ?
* qu'ai-je appris ?

## Jean-Marc




### Solutions

* j'ai connu
  * les terminaux sur le mainframe
  * les PC avec images (quid des utilisateurs nomades)
  * virtualisation avec Vagrant/VB par exemple
* Docker
  * rend des choses qu'on fesait depuis longtemps tres bon marche
    * utilisation du GPS
    * nouveau produits/nouvelles utilisations
* utiliser (naturellement) les recettes de l'ingénierie logicielle 

### Cristalisation

* je rflechi beaucoup sur comment ameliorer notre travail au sein de WL
* rencontre avec de jeunes collègues qui partagent ma vision de notre métier et de mes valeurs.
  * plus aventureux que moi
  * d'autres chemins d'expérience que moi
* (Autant j'aime mes habitudes/certitudes), j'ai l'intuition que cette technologie pourraient nous aider
  * l'idee est novatrice et va a l'encontre de mes habitudes (c'est tjr tres interessant)
  * l'occasion d'apprendre cette nouvelle techno avec quelqu'un qui trempe dedans depuis plusieurs années.
  * me confronter à d'autres manieres de travailler

### ce que j'ai appris

* j'ai appris de nouvelles technos (amélioré ma pratique)
  * Docker
  * Test Driven SYSTEM development (DEVOPS) 
  * Bash and Linux skills
  * the Gitlab/Github way
  * confirmation que de la conception à la production, le flux est continu (mort aux silos)
  * apprentissage du travail communautaire/ OSS (des valeurs qui me sont très proches)

* Notre intuition est correcte:
  * Encore rien rencontré de bloquant et très, très prometteur.
  * Il y a encore du travail
  * j'attend avec impatience l'épreuve du feu (situation réelle)


