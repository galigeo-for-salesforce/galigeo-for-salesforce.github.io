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

- Carte(s): liste les cartes enregistrées par l'utilsateur ou qui lui ont été partaggées
- Couche(s): liste l'ensemble des objets cartographiables configurés par un administrateur Galigeo
- Ouvert(s): liste l'ensemble des couches ouvertes

{:.table.table-noheader}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_maps.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_layers.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_opened.png){:.img.img-responsive.img-center}|
| \_Onglet des cartes* | _Objets cartograpiables_ | _Couches ouvertes_ |

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_map.png){:.img.img-center}|Charge une carte ou une couche. Lorsqu'une carte est chargée, le contenu de la carte est effacé et remplacé par la carte. Il est toujours possible de rajouter des couches ensuite |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_settings.png){:.img.img-center}|Accès à une configuration |

# Gestion des objets ouverts

Chaque couche ouverte est présentée dans une section permettant à l'utilisateur d'agir:

{:.table.table-bordered}
|![Layer visibility]({{ site.url }}/assets/img-std-v2/user/objects/layer_toggle_viz_switch.png){:.img.img-center}| Gère la visibilité de la couche sur la carte |
|![Show Filters]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png){:.img.img-center}| Affiche les filtres de la couche |
|![Remove layer]({{ site.url }}/assets/img-std-v2/user/objects/layer_remove_icon.png){:.img.img-center}| Retire la couche de la carte |
|![Rendering types]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_type_icons.png){:.img.img-center}| Change le type de rendu sur la carte (cluster ou marqueurs). Par défaut au chargement, le type de rendu par cluster est actif |

{:.table.table-noheader}
| | |
|:-------------:|:-------------:|
|![Cluster rendering]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_cluster.png){:.img.img-responsive.img-center}|![Marker rendering]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_marker.png){:.img.img-responsive.img-center} |
| \_Rendu par clusters* | _Rendu par marqueurs_ |

<div class="alert alert-warning" role="alert"> <strong>Important :</strong>  L'utilisation des clusters améliore les performances d'affichage. <br>Lors du changement de rendu de cluster vers marqueur, seuls 1000 éléments sont affichés à l'écran.</div>

## Fiche d'informations

La fiche d'informations d'un enregistrement s'obtient en cliquant sur un marqueur et contient:

- un lien vers la page de présentation Salesforce de l'enregistrement (en cliquant sur le nom)
- des informations essentielles sur l'objet [provenant de champs standards ou personnalisés](/fiche-info-etiquettes-admin)
- des [actions personnalisées](/actions-admin)
- des actions standards

{:.table.table-noheader}
| | |
|:-------------:|:-------------:|
|![Infowindow and custom actions]({{ site.url }}/assets/img-std-v2/user/objects/infowindow_quick_actions.png){:.img.img-responsive.img-center}|![Infowindow and standard actions]({{ site.url }}/assets/img-std-v2/user/objects/infowindow_actions.png){:.img.img-responsive.img-center} |
| \_Actions personnalisées* | _Actions standards_ |

## Filtrer la donnée

### Avec les filtres pré-configurés et dynamiques

Cliquer sur l'icône "Filtrer" ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png) pour faire afficher le panneau de filtres associés à la couche. Ces filtres ont été définis par l'administration de l'application lors de la configuration de l'objet géographique.

Le panneau est constitué de deux parties:

- les filtres préconfigurés
- les filtres dynamiques

#### Filtres pré-configurés

Grâce aux filtres pré-configurés, l'utilisateur peut modifier le contenu de sa carte en ne recupérant que les enregistrements qui vérifient les critères définis par les filtres.

{:.table.table-noheader}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_filters_panel.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_filters_panel02.png){:.img.img-responsive.img-center} |
| \_Filtre "Client", "Prospect" et "Ancien client activés"* | _Filtre "Prospect" activé_ |

#### Filtres dynamiques

Les filtres dynamiques permettent de filtrer les enregistrements par mot clé en quelques étapes:

1. taper du texte
2. choisir une proposition
3. Visualiser le résultat

{:.table.table-noheader}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dynfilter_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dynfilter_01_result.png){:.img.img-responsive.img-center}|
| \_Proposition de filtrage* | _Filtrage dynamique sur la ville de "Villeurbanne_ |

## Filtrage depuis le tableau de données

Pour chacune des couches ouvertes, le tableau de données permet:

- de filtrer par une recherche sur le nom
- de filtrer par colonne (liste de valeur le nombre, devises, date/dateime)

L'activation de ces filtres modifie l'affichage des objets sur la carte.

### Filtrage par mot clé sur le nom

Une zone de saisie permet de filtrer dynamiquement les enregistrements sur leur nom.

{:.table.table-noheader}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dt_filtering_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dt_filtering_01_name.png){:.img.img-responsive.img-center}|
| \_Tableau de données* | _Fitrage par le nom contenant "cafe"_ |

### Filtrage des colonnes

Pour chacune des colonnes (de type liste de valeur le nombre, devises, date/datetime), il est possible de définir un filtre en cliquant sur l'icône filtre de la colonne.

#### Listes de valeurs

{:.table.table-bordered.table-noheader}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_02.png){:.img.img-responsive.img-center}|
| \_Liste de valeurs* | _Fitrage sur "Client"_ |

{:.table.table-noheader}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_result.png){:.img.img-responsive.img-center}|
| \_Résultat* |

#### Nombres et Devises

Le filtrage sur des champs de type numériques ou devises se définit de la même manière:

1. Définir un (des) critère(s): en choisissant un opérateur et une valeur
2. Appliquer le filtre

{:.table.table-bordered.table-noheader}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_03.png){:.img.img-responsive.img-center}|
| \_Liste des conditions* | _CA supérieur à 1 500 000_ | _Liste des conditions_|

{:.table.table-noheader}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
| \_Résultat* |

#### Dates

Le filtrage sur les champs de type Date ou DateTime est réalisé en choisissant un opérateur et une période pré-définie.

{:.table.table-bordered.table-noheader}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_03.png){:.img.img-responsive.img-center}|
| \_Liste des conditions* | _Date de dernière visite de l'année dernière_ | _Liste des conditions_|

{:.table.table-noheader}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
| \_Résultat* |

<div class="alert alert-info" role="alert">Le filtrage sur les colonnes s'applique de gauche à droite.<br />Si des filtres sont activés sur les colonnes "CA 2016" et "CA 2017", le résultat sera obtenu en filtrant dans un premier temps la donnée avec les conditions définies sur la colonne "CA 2016", puis celles definies pour la colonne "CA 2017".</div>

## Filtrage par recherche à proximité

L'application offre trois manières de réaliser un filtrage des éléments en faisant une recherche à proximité:

- depuis le marqueur vert ![Data Explorer]({{ site.url }}/assets/img-std-v2/user/icons/icon_currentlocation.png) indiquant la localisation courante: obtenue soit par localisation automatique de l'utilisateur soit par recherche d'adresse
- depuis une des actions standards disponibles dans la fiche d'informations
- depuis le menu contextuel à partir du clic droit

{:.table.table-bordered.table-noheader}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Recherche à proximité]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_currentlocation.png){:.img.img-responsive.img-center}|![Recherche à proximité]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_infowindow.png){:.img.img-responsive.img-center}|![Recherche à proximité]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_rightclick.png){:.img.img-responsive.img-center}|
| \_Localisation courante* | _Fiche d'information_ | _Clic droit_|

Ce qui ouvre une fenêtre invitant l'utilisateur à renseigner la distance et l'unité:
![Nearby popup]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_popup.png){:.img.img-responsive.img-center}

Une fois validé, toutes les couches sont filtrées aussi bien sur la carte que dans le tableau de données.

Pour supprimer le filtrage, il suffit de cliquer sur le cercle pour faire apparaître un menu contextuel et cliquer sur "Annuler la recherche".
