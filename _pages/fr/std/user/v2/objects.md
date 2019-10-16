---
layout: sidebar-lightning
title: Objets
categories: documentation
permalink: /lightning/objects
lang: fr
ref: lightning-objects
---
<style>
  .table-noheader th { display:none;}
</style>
# Cartes et couches

À l'ouverture de l'application, le menu "Couches" est automatiquement ouvert et présente trois onglets:

1. Carte(s): liste les cartes enregistrées par l'utilsateur ou qui lui ont été partaggées
2. Couche(s): liste l'ensemble des objets cartographiables configurés par un administrateur Galigeo
3. Ouvert(s): liste l'ensemble des couches ouvertes

{:.table.table-noheader}
|               |               |               |
|:-------------:|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_maps.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_layers.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_opened.png){:.img.img-responsive.img-center}|
| *Onglet des cartes* | *Objets cartograpiables* | *Couches ouvertes* |


{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_map.png){:.img.img-center}|Charge une carte ou une couche. Lorsqu'une carte est chargé, le contenu la carte est effacé et remplacé par la carte. Il est toujours possible de rajouter des couches ensuite |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_settings.png){:.img.img-center}|Accès à une configuration |

# Gestion des objets ouverts

Chaque couche ouverte est affichée dans une carte permettant à l'utilisateur d'agir

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_toggle_viz_switch.png){:.img.img-center}| Gère la visibilité de la couche sur la carte |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png){:.img.img-center}| Affiche les filtres de la couche |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_remove_icon.png){:.img.img-center}| Retire la couche de la carte |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_type_icons.png){:.img.img-center}| Change le type de rendu sur la carte (cluster ou marqueurs). Par défaut au chargement, le type de rendu par cluster est actif |

{:.table.table-noheader}
|               |               |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_cluster.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_marker.png){:.img.img-responsive.img-center} |
| *Rendu par clusters* | *Rendu par marqueurs* |

## Fiche d'information

La fiche d'information d'un enregistrement s'obtient en cliquant sur un marqueur et contient:

- un lien vers la page de présentation Salesforce de l'enregistrement (en cliquant sur le nom)
- des informations essentielles sur l'objet [provenant de champs standards ou personnalisés](/fiche-info-etiquettes-admin)
- des [Actions personnalisées](/actions-admin)
- des actions standards

{:.table.table-noheader}
|               |               |
|:-------------:|:-------------:|
|![Infowindow and custom actions]({{ site.url }}/assets/img-std-v2/user/objects/infowindow_quick_actions.png){:.img.img-responsive.img-center}|![Infowindow and standard actions]({{ site.url }}/assets/img-std-v2/user/objects/infowindow_actions.png){:.img.img-responsive.img-center} |
| *Actions personnalisées* | *Actions standards* |

## Filtrer la donnée

### Avec les filtres pré-configurés et dynamiques

Cliquer sur l'icône "Filtrer" ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png) pour faire afficher le panneau de filtres associés à la couche. Ces filtres ont été définis par l'administration de l'application lors de la configuration de l'objet géographique.

Le panneau est constitué de deux parties:

1. les filtres dynamiques
2. les filtres préconfigurés

#### Filtres pré-configurés

Grâce aux filtres pré-configurés, l'utilisateur peut modifier le contenu de sa carte en ne recupérant que les enregistrements qui vérifient les critères définis par les filtres. 

{:.table.table-noheader}
|               |               |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_filters_panel.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_filters_panel02.png){:.img.img-responsive.img-center} |
| *Filtre "Client", "Prospect" et "Ancien client activés"* | *Filtre "Prospect" activé* |

#### Filtres dynamiques

Les filtres dynamiques permettent de filtrer les enregistrements par mot clé en quelques étapes: 

1. taper du texte
2. choisir une proposition
3. Visualiser le résultat

{:.table.table-noheader}
|               |               |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dynfilter_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dynfilter_01_result.png){:.img.img-responsive.img-center}|
| *Proposition de filtrage* | *Filtrage dynamique sur la ville de "Villeurbanne* |

## Fitlrage depuis le tableau de données

Pour chacune des couches ouvertes, le tableau de données permet:

- de filtrer par une recherche sur le nom
- de filtrer par colonne (liste de valeur le nombre, devises, date/dateime)

L'activation de ces filtres modifie l'affichage des objets sur la carte.

### Filtrage par mot clé sur le nom

Une zone de saisie permet de filtrer dynamiquement les enregistrements sur leur nom.

{:.table.table-noheader}
|               |               |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dt_filtering_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dt_filtering_01_name.png){:.img.img-responsive.img-center}|
| *Tableau de données* | *Fitrage par le nom contenant "cafe"* |


### Filtrage des colonnes

Pour chacune des colonnes (de type liste de valeur le nombre, devises, date/dateime), il est possible de définir un filtre en cliquant sur l'icône filtre de la colonne. 

#### Listes de valeur

{:.table.table-noheader}
|               |               |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_02.png){:.img.img-responsive.img-center}|
| *Liste de valeurs* | *Fitrage sur "Client"* |

{:.table.table-noheader}
|               |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_result.png){:.img.img-responsive.img-center}|
| *Résultat* |

#### Nombres et Devises

Le filtrage sur des champs de type numériques ou devises se définit de la même manière:

    1. Définir un (des) critère(s): en choisissant un opérateur et une valeur
    2. Appliquer le filtre

{:.table.table-noheader}
|               |               |               |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_03.png){:.img.img-responsive.img-center}|
| *Liste des conditions* | *CA supérieur à 1 500 000* | *Liste des conditions*|

{:.table.table-noheader}
|               |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
|  *Résultat*   |

#### Dates

Le filtrage sur les champs de type Date ou DateTime est réalisé en choisisant un opérateur et une période pré-définie. 

{:.table.table-noheader}
|               |               |               |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_03.png){:.img.img-responsive.img-center}|
| *Liste des conditions* | *Date de dernière visite de l'année dernière* | *Liste des conditions*|

{:.table.table-noheader}
|               |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
| *Résultat*    |


{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  |Le filtrage sur les colonnes s'applique de gauche à droite. |
