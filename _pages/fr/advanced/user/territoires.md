---
layout: sidebar
title: Concevoir une sectorisation commerciale
categories: documentation
permalink: /territoires-adv
lang: fr
ref: territoires-adv
---

# Conception de territoires

---

## Dans cet article
{:.no_toc}

* Table of Contents
{:toc}

---

## Sélection

### Définition
	
Pour créer un territoire on doit sélectionner un ensemble de secteurs. Cette sélection apparaît d’abord comme territoire « virtuel » :

- Il apparaît sur la carte (par défaut en bleu), le détail des secteurs est affiché dans le tableau de territoires, sur la première ligne
- Il est affiché dans la vue graphique
- Le détail par secteur apparaît dans le tableau en bas à droite.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-sectors_selected.png){:.img.img-responsive.img-center}

Ses différences notables par rapport à un territoire classique :

- Il peut chevaucher d’autres territoires
- Aucun collaborateur ne peut être affecté à ce territoire 
- Il ne peut pas être supprimé

### Manipulation

Pour modifier une sélection, on doit entrer en mode édition en cliquant sur le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-026.jpg). On peut quitter l’outil en cliquant à nouveau sur ce bouton ou en appuyant sur ESC.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-027.png){:.img.img-responsive.img-center}

A partir du bouton de sélection, on accède aux 3 outils de dessin disponibles : le point, le cercle et le polygone libre.

Les secteurs contenus dans le cercle, le polygone ou le point tracé forment la sélection. En maintenant la touche CTRL appuyée durant le dessin, les secteurs seront ajoutés à la sélection. En maintenant la touche MAJ appuyée, ils seront soustraits de la sélection.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-selection_pen.png){:.img.img-responsive.img-center}

Les secteurs peuvent également être sélectionnés depuis le tableau des secteurs. En mode édition, les lignes du tableau peuvent être sélectionnées. La sélection se fait de la même manière que dans un tableau classique : un clic permet de sélectionner une ligne, en maintenant la touche CTRL enfoncée on peut ajouter d’autres lignes, en maintenant la touche MAJ enfoncée on peut sélectionner une plage de lignes, CTRL-A permet de tout sélectionner.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-selection_table.png){:.img.img-responsive.img-center}

Cliquer sur le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-022.jpg) de la barre d’outils permet de supprimer la sélection.

## Actions

À partir d’une sélection, plusieurs actions sur les territoires sont possibles depuis la barre d'outils :

### Créer un territoire ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-029.jpg)

Un nouveau territoire se crée à partir d’une sélection. Il apparaît ainsi sur la carte, dans le tableau et sur le graphique. Par défaut, sa couleur est aléatoire. Le nom par défaut est « Territoire n », où *n* est le nombre de territoires au sein du projet. Ces deux paramètres peuvent être modifiés.

Lorsqu’une sélection chevauche un ou plusieurs territoires, la fenêtre ci-dessous s’affiche :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-030.png){:.img.img-responsive.img-center}


Deux possibilités :

- Utiliser toutes les geounits : le nouveau territoire est créé à partir de tous les secteurs contenus dans la sélection. Les secteurs qui appartiennent à un autre territoire seront soustraits à ce territoire (territoires filtrés inclus).
- Utiliser seulement les geounits non assignées : les secteurs qui ne sont pas assignés à un territoire existant seront utilisés pour créer le nouveau territoire. Les territoires existants ne sont pas modifiés (territoires filtrés inclus).

### Assigner la sélection à un territoire ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-031.jpg)

La sélection s’ajoute à un territoire existant. S’il n’y a qu’un territoire, la sélection sera automatiquement ajoutée à celui-ci. Dans le cas contraire, la fenêtre ci-dessous apparaît :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-032.png){:.img.img-responsive.img-center}


La liste déroulante contient tous les territoires existants non filtrés. Elle permet de choisir à quel territoire la sélection sera assignée.

Deux options possibles :

- Utiliser toutes les geounits : le nouveau territoire est créé des tous les secteurs contenus dans la sélection. Les secteurs qui appartiennent à un autre territoire seront soustraits à ce territoire (territoires filtrés inclus).
  
- Utiliser seulement les geounits non assignées : Seuls les secteurs qui ne sont pas assignés à un territoire existant seront utilisés pour créer le nouveau territoire. Les territoires existants ne sont pas modifiés (incluant les territoires filtrés).

Cette action peut aussi être effectuée par glisser déposer avec la souris DEPUIS les secteurs sélectionnés sur la carte ou via le tableau de secteurs VERS un territoire affiché sur la carte, une ligne du tableau de territoires ou une barre de la vue graphique.

### Annuler la sélection de territoire ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-033.jpg)

Les secteurs contenus dans la sélection sont soustraits des territoires auxquels ils appartiennent. Un message de validation s’affiche pour confirmation.

## Annuler une conception

Le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-034.jpg) permet l’annulation du ou des derniers territoires créés. On peut aussi effectuer cette action à l’aide de la combinaison de touches CTRL-Z.

## Isochronie

Les nouveaux territoires peuvent aussi être créés à partir de l’outil d’isochronie accessible depuis l’icône ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-035.jpg).

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-036.png){:.img.img-responsive.img-center}

L’outil d’isochronie calcule une ou plusieurs zones en fonction de différents critères. Ces zones sont alors intersectées avec les secteurs afin de former des territoires. Voici les paramètres à saisir :

### Placer un point

Peut être fait manuellement en cliquant sur la carte à l’endroit souhaité. Si une adresse à été antérieurement recherchée, il est possible de placer le point à cet endroit.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/territory-isochrone_point.png){:.img.img-responsive.img-center}

### Méthode de calcul

Trois méthodes sont disponibles :

- Isodistance : c’est un calcul géométrique simple. Les rayons des cercles ont les valeurs indiquées pour chaque zone.

- Sectorisation utilisant isochronie (temps de transport en voiture) : sont sélectionnés les secteurs accessibles en voiture dans le temps imparti à partir du point de départ indiqué

- Sectorisation utilisant isodistance en voiture : sont sélectionnés les secteurs accessibles en voiture à une distance égale ou inférieure aux valeurs indiquée à partir du point de départ indiqué

### Zones

Le tableau permet de définir la méthode utilisée pour calculer les zones.

Par défaut, il y a deux zones. Il est possible d’ajouter ou d’éliminer une zone à l’aide des ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-037.jpg) et ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-038.jpg). On peut modifier les couleurs et les noms. Ces noms et couleurs sont utilisés pour créer les territoires. Ces paramètres peuvent être modifiés par la suite. On doit spécifie une valeur pour chaque zone. Pour les deux méthodes d’isodistance les valeurs sont en kilomètres. Pour la méthode d’isochronie les valeurs sont en minutes.

### Utiliser seulement des secteurs non assignés

Si cette case est cochée, les territoires sont créés en utilisant les secteurs qui n’appartiennent à aucun territoire. Les territoires existants ne sont pas modifiés. Si elle n’est pas cochée, tous les secteurs seront utilisés. S’ils appartiennent à des territoires existants, ils seront soustraits à ces territoires.

Une fois les paramètres saisis, le bouton « Simuler » lance un calcul sans créer de territoire. Le résultat s’affiche sur la carte avec une symbologie différente des territoires existants (tous les secteurs sont visibles et les bordures sont plus épaisses). On peut effectuer autant de simulations que nécessaire.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/territory-isochrone_simulation.png){:.img.img-responsive.img-center}

Les territoires sont effectivement créés après avoir cliqué sur le bouton « Valider ».

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/territory-isochrone_creation.png){:.img.img-responsive.img-center}