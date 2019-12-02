---
layout: sidebar-lightning
title: Zone d''intérêt
categories: documentation
permalink: /lightning/zone-interet
lang: fr
ref: lightning-areaofinterest
---

<style>
  .table-noheader th { display:none;}
</style>

# Zones d'intérêt

Une zone d'intérêt est un polygone pouvant être dessiné sur la carte, sauvegardé et rechargé. L'onglet des zones d'intérêt est toujours disponible dans le tableau de données.
![Area of Interest]({{ site.url }}/assets/img-std-v2/user/aoi/blank_panel.png){:.img.img-responsive.img-center}

## Dessiner des zones

L'outil de dessin est accessible en cliquant sur l'icône ![Area of Interest]({{ site.url }}/assets/img-std-v2/user/icons/icon_drawtool.png):

- Cliquer sur la carte pour dessiner le polygone
- Cliquer sur le premier point pour fermer le polygone et terminer le dessin

{:.table.table-noheader}
| | |
|:-------------:|:-------------:|
|![Area of Interest]({{ site.url }}/assets/img-std-v2/user/aoi/aoi*drawing_inprogress.png){:.img.img-responsive.img-center}|![Area of Interest]({{ site.url }}/assets/img-std-v2/user/aoi/aoi_drawing_done.png){:.img.img-responsive.img-center}|
| \_Dessin en cours* | _Dessin terminé_ |

Une fois terminé, la zone est disponible dans la liste:
![Area of Interest]({{ site.url }}/assets/img-std-v2/user/aoi/aoi_drawing_done_list.png){:.img.img-responsive.img-center}

## Outils

Pour chacune des zones d'intérêt il est possible:

- de changer sa visibilité sur la carte en activant ou non la case à cocher devant le nom
- de modifier son nom et sa description
- de changer sa couleur

Un autre menu d'actions est disponible en cliquant l'icône ![Area of Interest]({{ site.url }}/assets/img-std-v2/user/icons/icon_more.png) et permet:

- de zoomer sur la zone
- de la modifier
- d'extraire les objets pour en faire un couche de travail
- de l'enregistrer
- de la retirer de la liste
- de la supprimer (option disponible uniquement si la couche a été sauvegardée)

![Area of Interest]({{ site.url }}/assets/img-std-v2/user/aoi/aoi_popupmenu.png){:.img.img-responsive.img-center}

## Chargement d'une zone

Le chargement d'une zone préalablement enregistrée se fait en cliquant sur l'icône ![Area of Interest]({{ site.url }}/assets/img-std-v2/user/icons/icon_load.png) pour ouvrir une fenêtre listant l'ensemble des zones disponibles non encore chargées:

![Area of Interest]({{ site.url }}/assets/img-std-v2/user/aoi/aoi_loadingpopup.png){:.img.img-responsive.img-center}

Un clic sur l'icône ![Area of Interest]({{ site.url }}/assets/img-std-v2/user/icons/icon_load.png) devant la zone désirée la charge, l'affiche à l'écran et celle-ci est disponible dans le l'onglet zone d'intérêt.
