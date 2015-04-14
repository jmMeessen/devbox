# Todo ?

* [x] Sudoes no passwd
* [x] Data volume à appliquer (/data, /tmp, logs, etc.) pour perfs I/O

* [x] Script shell de lancement de la devbox (avec partage docker socket + docker bin)
* [ ] Script de "backup" du workspace (docker run --volume-from=devbox debian:wheezy -v /vagrant:/backup tar czf /data /backup/$(date).tgz ou truc du genre) 
* [ ] make clean : utiliser la variable globale + confirmation 

* [x] LXDE raccourci pour IntelliJ avec image
* [x] LXDE IntelliJ dans main taskbar
* [x] Main taskbar en haut de l'écran

* [x] Ajout d'un navigateur web
* [x] Ajout d'un raccourci pour le terminal dans la taskbar

* [x] Attention, les ENV du Dockerfile ne sont pas appliqués au user dockerx => /etc/default, profile, etc...

* [ ] Test docker inside devbox
* [ ] Faire une démo d'un dévelopement (spring boot)
	* [x] depot Github séparé
	* [x] configurer maven
	* [x] faire fonctionner le build maven depuis la ligne de commande
	* [ ] faire fonctionner/intégrer ce projet Maven dans Intellij

* [ ] remove docker-bats directory
* [ ] Lighten the final image

## Slide related TODO

* [ ] faire le plan
* [ ] clarifier ce qu'on veut que les auditeurs "ramènent chez eux"

* [ ] changer le fond d'un slide
* [ ] Est-ce que le slide show fonctionne aussi off-line ?


## Nice to have

* [ ] Further improve the README.md. Add links to sub-files like ISSUES or background information on the why of the initative.
