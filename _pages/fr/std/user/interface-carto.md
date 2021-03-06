---
layout: sidebar
title: Interface cartographique
categories: documentation
permalink: /interface-carto
lang: fr
ref: interface-carto
---

# Interface cartographique

## Présentation générale

Dans le viewer cartographique l’utilisateur peut visualiser et analyser ses données :

- Visualiser les objets géographiques Salesforce sur une carte
- Planifier un événement associé à un objet
- Naviguer et explorer les analyses de données associées à la carte
- Sélectionner une zone et obtenir les métriques qui lui sont associées

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-026.jpg){:.img.img-responsive.img-center}

## Barre d'outils

{:.table}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/interface-navigation_closed.png)|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/interface-navigation_open.png)| La barre d’outils permet d’accéder aux différentes fonctionnalités de l’application. <br><br>A l’ouverture de la carte, la barre est repliée (voir l’illustration sur la gauche). Elle se déplie au survol du curseur. <br>L’utilisateur peut cliquer sur l’icône pour qu’elle reste ouverte. | 

## Visualisation de données

Par défaut, les objets visibles sur la carte sont regroupés en clusters. En fonction du niveau de zoom de la carte, le viewer groupe les points en clusters. Plus le zoom est important, plus la taille des clusters diminue jusqu’à ce qu’ils deviennent des marqueurs individuels. 

Ci-dessous la même zone apparaît à deux niveaux de zoom différents :

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/cluster1.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/cluster2.png){:.img.img-responsive.img-center}|
| *Marqueurs clusterisés* | *Clusters divisés* |

Galigeo for Salesforce offre la possibilité de désactiver ce clusters pour visualiser individuellement tous les objets affichés sur la carte :

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-005.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-007.png){:.img.img-responsive.img-center}|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-006.jpg){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-008.jpg){:.img.img-responsive.img-center}|
| *Carte avec clusters* | *Carte sans cluster* |

{:.table.table-bordered}
| ![warning]({{ site.url }}/assets/warning.png)     | L'utilisation des clusters améliore les performances d'affichage. <br><br> Le mode détaillé est déconseillé pour afficher plus de 1000 points. |

## Fiche d'information

La fiche d'information contient :
- Un lien vers la fiche Salesforce de l'objet
- Des informations essentielles sur l'objet [provenant de champs standards ou personnalisés](/fiche-info-etiquettes-admin)
- Des [Actions personnalisées](/actions-admin)
- Des [Actions standard](/actions#actions-standard)
- Une liste déroulante des [tableaux de bord](/tableaux-de-bord#a-partir-dun-objet)

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/interface_carto-fiche_info.png){:.img.img-responsive.img-center}