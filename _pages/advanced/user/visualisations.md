---
layout: sidebar
title: Modes de visualisation
categories: documentation
permalink: /visualisations-adv
---

## Modes de visualisation

### Carte

Les territoires sont représentés sur la carte dans la couleur qui leur a été assignée.

### Tableaux/Graphiques

En bas à gauche de l’interface, les territoires sont représentés d’une manière tabulaire ou graphique. Un switch permet le basculement entre les deux vues.

- Vue tabulaire

	Chaque ligne correspond à un territoire. La première ligne du tableau correspond toujours, même pour les nouveaux projets, à la sélection. La sélection est un territoire « virtuel ». Il est utilisé pour la création et modification des territoires. Plus de détails sur la sélection sont disponibles dans le chapitre sur la conception des territoires.

	Ce tableau comprend les colonnes suivantes :

	- Territoire : contient le nom, la couleur et le nombre de secteurs composant le territoire.
	- Collaborateur : c’est le collaborateur affecté au territoire, s’il y a un. 
	- Les colonnes suivantes correspondent aux indicateurs disponibles. Un indicateur est un champ numérique défini au niveau de secteur. Dans ce tableau les indicateurs sont agrégés pour chaque territoire. Dans l’entête des colonnes, un bouton permet de changer la fonction d’agrégation. Les fonctions suivantes sont disponibles : moyenne (average), somme (sum), minimum, maximum, nombre (number). Par défaut, la somme est sélectionnée.

	Pour chaque territoire plusieurs actions sont disponibles dans la colonne « Territoire » :

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-020.png) : Ce bouton modifie la visibilité du territoire sur la carte

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-021.png) : Ce bouton effectue un zoom sur le territoire

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-022.jpg) : Ce bouton supprime un territoire

	En cliquant sur la couleur assignée au territoire, une fenêtre s’ouvre et permet la sélection d’une couleur pour le territoire
	
	Un double clic sur le nom de territoire permet de renommer le territoire.
  
  Dans la colonne « Collaborateur », il est possible d’assigner un collaborateur au territoire. La liste des collaborateurs disponibles est définie par l’administrateur du Territory Management. Une barre de recherche permet de filtrer les collaborateurs par nom. L’x rouge supprime l’affectation d’un collaborateur à un territoire.

- Graphiques

	Cette vue affiche, pour chaque territoire, les agrégats issus des indicateurs sous forme d’histogramme. La fonction d’agrégation retenu est celle qui est sélectionnée dans la vue tabulaire.

	Par défaut, tous les indicateurs sont simultanément affichés. La légende située à droite du graphique permet la sélection des indicateurs à afficher.

	Lorsque la souris survole une barre diagramme, une infobulle s’affiche montrant l’indicateur, le territoire et la valeur à laquelle correspond la barre.

	Sur l’axe des ordonnées le minimum et le maximum correspondent au minimum et maximum de tous les indicateurs sur tous les territoires. En conséquence, si les indicateurs sont affichés avec des unités différentes ou s’il y a des indicateurs avec des valeurs très éloignées, un problème d’échelle peut apparaître.

### Interactions

Les vues cartographiques, tabulaires et graphiques des territoires sont interconnectées. 

Si on clique sur un territoire dans l’une de ces 3 vues, son apparence sera modifiée : il apparaît en surbrillance avec une bordure jaune sur la carte, un arrière-plan grisé apparaît sur la ligne du tableau correspondante et sous la forme d’une barre plus foncée dans le diagramme.

### Détails des secteurs

Si on sélectionne un territoire, les détails des secteurs le composant sont affichés de deux façons différentes :

- Sur la carte, les géométries des secteurs sont visibles
- En bas à droite de l’interface, un tableau affiche le détail des attributs des différents secteurs.

Ces deux affichages sont interconnectés. Si on clique sur un secteur sur la carte, celui- ci apparaît en surbrillance, dans le tableau le cadre de la ligne correspondante clignote et inversement.

### Options d’affichage

- Étiquettes

	Les noms de territoires peuvent être affichés sur la carte utilisant le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-023.png).

- Filtres

	Il est possible de filtrer des territoires visibles dans l’application. Il y a deux types de filtres :

	- Filtre texte : il filtre les noms des collaborateurs affectés à un territoire. Le filtre est disponible dans la barre d’outils ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-024.png)

  - Filtre d’étendue : il est actif lorsqu’on clique sur le bouton ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-025.png) de la barre d’outils. Il filtre les territoires pour n’afficher que les territoires visibles sur la carte au moment de l’activation.

### Couches de ponctuels

Si à la création du projet l’utilisateur a sélectionné une couche de ponctuels, elle apparaît sur la carte. Elle sera « clusterisée », c’est-à-dire les points proches du point de vue géographique sont regroupés afin de ne pas surcharger la carte.

En bas à droite un bouton permet d’afficher les informations de la couche de ponctuels en lieu et place de celles des secteurs.

L’interface en mode « Ponctuel » est identique à celle du mode « Secteur » et il n’y a que les deux différences suivantes :

- Le tableau à droite : il affiche le détail des points qui sont affectés à un collaborateur pour un territoire donné
- Le tableau à gauche : il affiche l’agrégation des attributs des points qui sont affectés à un collaborateur pour un territoire

Un point prend la couleur du territoire où il est situé si le propriétaire de l’objet est aussi déclaré comme un collaborateur sur ce territoire. Si un collaborateur est assigné à plusieurs territoires, alors les points prennent la couleur du premier territoire apparaissant dans le tableau.

Par défaut, les points apparaissent en gris.