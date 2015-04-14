name: inverse
layout: true
class: center, middle, inverse

---
class: center, middle, inverse

# Devbox

.footnote[Brought to you by <br>D. <b><u>Duportal</u></b> and J-M <b><u>Meessen</u></b>]

---

# Agenda

1. Introduction

  - What the talk is about (and not)
  - Who we are 
  - Who are you ?

2. Deep-dive
3. ...

---

template: inverse

# Introduction

---
layout: false
.left-column[
# Introduction
  ## Qui sommes-nous ?
]
.right-column[
  ## Jean-Marc MEESSEN

  ## Damien DUPORTAL
]

---
layout: false
.left-column[
# Introduction
  ## Qui sommes-nous ?
  ## Remerciements
]
.right-column[
  ## Merci !
  * Organisateurs et bénévoles Mix-It 
  * à vous, de venir !
  * Au personnes ayant réalisé et crus en ces outils
]

---
layout: false
.left-column[
# Pourquoi ce talk ?
]
.right-column[
  ## Pourquoi ce talk ?
  * seen a lot in nearly 30 years in IT
    * victories / failures
    * great peoples
  * still as enthousiastic to learn/share
    * great stuff out there (admirative)
    * make people's life easier
    * I want to share why I am proud of what I do
    * hope to be able to continue even after retirement
  * BUT, one of my big frustration : Wasted (unfocused energy) at the start of a every new adventure
]

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
  ## 

]
.right-column[
  ## Use SCMs :

  Préférer les distribués (DVCS), qui ouvre la porte à de nouvelles façon de travailler : *Github wokflow*

  FIXME : Image du graph Github 
]
