---
layout: sidebar-lightning
title: Couche de travail
categories: documentation
permalink: /lightning/working-layer
lang: fr
ref: lightning-workinglayer
---

# Couches de travail

Une couche de travail est une extraction des couches (objets Salesforce) visibles à l'écran.

Cette extraction peut se faire à partir:

- [d'une zone d'intérêt](/lightning/zone-interet)
- [d'un filtrage suite à une recherche à proximité](/lightning/objects#filtrage-par-recherche--proximit)

{:.table}
| | |
|:-------------:|:-------------:|
|![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extract_from_aoi.png){:.img.img-responsive.img-center}|![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extract_from_nearbysearch.png){:.img.img-responsive.img-center}|
| \_Zone d'intérêt* | _Proximité_ |

En activant cette option, une fenêtre propose à l'utilisateur de choisir parmi les couches affichées sur l'écran celle(s) dont il souhaite extraire les objets se trouvant à l'intérieur:
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extract_records.png){:.img.img-responsive.img-center}

Une fois validé, on obtient une couche de travail, listant les objets extraits:
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extracted_records.png){:.img.img-responsive.img-center}

Pour chacune de ces couches de travail, il est possible:

- de modifier la visibilité sur la carte
- de changer la couleur des marqueurs dessinés sur la carte

&Agrave; partir de l'icône ![Area of Interest]({{ site.url }}/assets/img-std-v2/user/icons/icon_more.png) à droite, le menu contextuel propose les actions suivantes:

- Afficher le détail des objets extraits
- Ajouter ces objets à un itinéraire
- Retirer la couche de travail

{:.table}
| |
|:-------------:|
|![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/wl_popupmenu.png){:.img.img-responsive.img-center}|
| \_Menu contextuel* |

Le détail des objets extraits est visualisable dans un tableau où les différentes couches sont affichées dans un onglet:
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extracted_records_details.png){:.img.img-responsive.img-center}

En ajoutant ces objets à un itinéraire, on obtient l'ensemble des points de passage sur la carte et dans le menu "Itinéraire"
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extracted_records_toroute.png){:.img.img-responsive.img-center}
