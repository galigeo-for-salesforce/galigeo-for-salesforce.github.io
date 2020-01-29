---
layout: sidebar-lightning
title: Objets
categories: documentation
permalink: /lightning/objects
lang: fr
ref: lightning-objects
---

# Cartes et couches

À l'ouverture de l'application, le menu "Couches" est automatiquement ouvert et présente trois onglets:

- Carte(s): liste les cartes enregistrées par l'utilsateur ou qui lui ont été partaggées
- Couche(s): liste l'ensemble des objets cartographiables configurés par un administrateur Galigeo
- Ouvert(s): liste l'ensemble des couches ouvertes

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_maps.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_layers.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/mlayer_tab_opened.png){:.img.img-responsive.img-center}|
| *Onglet des cartes* | *Objets cartograpiables* | *Couches ouvertes* |

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_map.png){:.img.img-center}|Charge une carte ou une couche. Lorsqu'une carte est chargée, le contenu de la carte est effacé et remplacé par la carte. Il est toujours possible de rajouter des couches ensuite |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_share.png){:.img.img-center}|Gestion du partage de la carte |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_delete.png){:.img.img-center}|Suppression d'une carte |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_settings.png){:.img.img-center}|Accès à une configuration |

# Gestion des cartes

Une carte est un élément composé de couches (ou objets cartographiables).

Cet onglet présente deux sections

- la liste des cartes qui ont été partagées par un autre utilisateur avec celui connecté
- la liste des cartes de l'utilisateur courant

Pour toutes les cartes, il est possible de les charger en cliquant sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_map.png). 

Pour chacunes des cartes définis par l'utilsateur, il possible de:

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_share.png){:.img.img-center}| gérer le partage avec des utilisateurs ou des groupes |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_delete.png){:.img.img-center}| supprimer une carte |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_fav_map.png){:.img.img-center} ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_fav_map_selected.png){:.img.img-center}| définir une carte comme favorite pour la charger au démarrage par simple clic sur cet icône. Une icône verte indique que c'est la carte favorite |

## Création d'une carte

Après avoir charger des objets, l'utilsateur a la possibilité d'enregistrer cet ensemble comme une carte en cliquant sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_save.png). 

![New Map]({{ site.url }}/assets/img-std-v2/user/map/new_map_01.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert">Les cartes partagées ne sont accessibles qu'en lecture seule. L'utilisateur ne peut que les charger. Il peut tout de même utiliser la fonctionnalité "Enregistrer sous" pour en faire une copie.</div>

## Partage d'une carte

En cliquant sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_share.png), une fenêtre s'affiche contenant la liste des utilisateurs et des groupes avec lesquels un partage est fait.
![New Share]({{ site.url }}/assets/img-std-v2/user/map/map_share_01.png){:.img.img-responsive.img-center.img-bordered}

Pour rajouter un partage, il faut cliquer sur l'icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_add.png) pour que la fenêtre d'ajout s'affiche. Dans celle-ci,
- Choisissez une catégorie: utilisateurs ou groupes 
- Choisissez parmi les éléments 
- cliquez sur le bouton "Enregistrer"

![New Share]({{ site.url }}/assets/img-std-v2/user/map/map_share_02.png){:.img.img-responsive.img-center.img-bordered}

Une fois l'ajout des utilisateurs (ou groupes) terminé, le contenu se rafraîchit 

![New Share]({{ site.url }}/assets/img-std-v2/user/map/map_share_03.png){:.img.img-responsive.img-center.img-bordered}


# Gestion des objets ouverts

Chaque couche ouverte est présentée dans une section permettant à l'utilisateur d'agir:

{:.table.table-bordered}
|![Layer visibility]({{ site.url }}/assets/img-std-v2/user/objects/layer_toggle_viz_switch.png){:.img.img-center}| Gère la visibilité de la couche sur la carte |
|![Show Filters]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png){:.img.img-center}| Affiche les filtres de la couche |
|![Remove layer]({{ site.url }}/assets/img-std-v2/user/objects/layer_remove_icon.png){:.img.img-center}| Retire la couche de la carte |
|![Rendering types]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_type_icons.png){:.img.img-center}| Change le type de rendu sur la carte (cluster ou marqueurs). Par défaut au chargement, le type de rendu par cluster est actif |

{:.table}
| | |
|:-------------:|:-------------:|
|![Cluster rendering]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_cluster.png){:.img.img-responsive.img-center}|![Marker rendering]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_marker.png){:.img.img-responsive.img-center} |
| *Rendu par clusters* | *Rendu par marqueurs* |

<div class="alert alert-warning" role="alert"> <strong>Important :</strong>  L'utilisation des clusters améliore les performances d'affichage. <br>Lors du changement de rendu de cluster vers marqueur, seuls 1000 éléments sont affichés à l'écran.</div>

## Fiche d'informations

La fiche d'informations d'un enregistrement s'obtient en cliquant sur un marqueur et contient:

- un lien vers la page de présentation Salesforce de l'enregistrement (en cliquant sur le nom)
- des informations essentielles sur l'objet [provenant de champs standards ou personnalisés](/fiche-info-etiquettes-admin)
- des [actions personnalisées](/actions-admin)
- des actions standards

{:.table}
| | |
|:-------------:|:-------------:|
|![Infowindow and custom actions]({{ site.url }}/assets/img-std-v2/user/objects/infowindow_quick_actions.png){:.img.img-responsive.img-center}|![Infowindow and standard actions]({{ site.url }}/assets/img-std-v2/user/objects/infowindow_actions.png){:.img.img-responsive.img-center} |
| *Actions personnalisées* | *Actions standards* |

## Filtrer la donnée

### Avec les filtres pré-configurés et dynamiques

Cliquer sur l'icône "Filtrer" ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png) pour faire afficher le panneau de filtres associés à la couche. Ces filtres ont été définis par l'administration de l'application lors de la configuration de l'objet géographique.

Le panneau est constitué de deux parties:

- les filtres préconfigurés
- les filtres dynamiques

#### Filtres pré-configurés

Grâce aux filtres pré-configurés, l'utilisateur peut modifier le contenu de sa carte en ne recupérant que les enregistrements qui vérifient les critères définis par les filtres.

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_filters_panel.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_filters_panel02.png){:.img.img-responsive.img-center} |
| *Filtre "Client", "Prospect" et "Ancien client activés"* | *Filtre "Prospect" activé* |

#### Filtres dynamiques

Les filtres dynamiques permettent de filtrer les enregistrements par mot clé en quelques étapes:

1. taper du texte
2. choisir une proposition
3. Visualiser le résultat

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dynfilter_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dynfilter_01_result.png){:.img.img-responsive.img-center}|
| *Proposition de filtrage* | *Filtrage dynamique sur la ville de "Villeurbanne"* |

## Filtrage depuis le tableau de données

Pour chacune des couches ouvertes, le tableau de données permet:

- de filtrer par une recherche sur le nom
- de filtrer par colonne (liste de valeur le nombre, devises, date/dateime)

L'activation de ces filtres modifie l'affichage des objets sur la carte.

<div class="alert alert-info" role="alert">Pour tous les tableaux de données des objets salesforce chargés, la première colonne et l'entête du tableau sont figés.</div>

### Filtrage par mot clé sur le nom

Une zone de saisie permet de filtrer dynamiquement les enregistrements sur leur nom.

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dt_filtering_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/layer_dt_filtering_01_name.png){:.img.img-responsive.img-center}|
| *Tableau de données* | *Fitrage par le nom contenant "cafe"* |

### Filtrage des colonnes

Pour chacune des colonnes (de type liste de valeur le nombre, devises, date/datetime), il est possible de définir un filtre en cliquant sur l'icône filtre de la colonne.

#### Listes de valeurs

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_02.png){:.img.img-responsive.img-center}|
| *Liste de valeurs* | *Fitrage sur "Client"* |

{:.table}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_picklist_result.png){:.img.img-responsive.img-center}|
| *Résultat* |

#### Nombres et Devises

Le filtrage sur des champs de type numériques ou devises se définit de la même manière:

1. Définir un (des) critère(s): en choisissant un opérateur et une valeur
2. Appliquer le filtre

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_03.png){:.img.img-responsive.img-center}|
| *Liste des conditions* | *CA supérieur à 1 500 000* | *Liste des conditions* |

{:.table}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
| *Résultat* |

#### Dates

Le filtrage sur les champs de type Date ou DateTime est réalisé en choisissant un opérateur et une période pré-définie.

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_date_03.png){:.img.img-responsive.img-center}|
| *Liste des conditions* | *Date de dernière visite de l'année dernière* | *Liste des conditions* |

{:.table}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
| *Résultat* |

<div class="alert alert-info" role="alert">Le filtrage sur les colonnes s'applique de gauche à droite.<br />Si des filtres sont activés sur les colonnes "CA 2016" et "CA 2017", le résultat sera obtenu en filtrant dans un premier temps la donnée avec les conditions définies sur la colonne "CA 2016", puis celles definies pour la colonne "CA 2017".</div>

## Filtrage par recherche à proximité

L'application offre trois manières de réaliser un filtrage des éléments en faisant une recherche à proximité:

- depuis le marqueur vert ![Data Explorer]({{ site.url }}/assets/img-std-v2/user/icons/icon_currentlocation.png) indiquant la localisation courante: obtenue soit par localisation automatique de l'utilisateur soit par recherche d'adresse
- depuis une des actions standards disponibles dans la fiche d'informations
- depuis le menu contextuel à partir du clic droit

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Recherche à proximité]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_currentlocation.png){:.img.img-responsive.img-center}|![Recherche à proximité]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_infowindow.png){:.img.img-responsive.img-center}|![Recherche à proximité]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_rightclick.png){:.img.img-responsive.img-center}|
| *Localisation courante* | *Fiche d'information* | *Clic droit* |

Ce qui ouvre une fenêtre invitant l'utilisateur à renseigner la distance et l'unité:
![Nearby popup]({{ site.url }}/assets/img-std-v2/user/nearbysearch/ns_popup.png){:.img.img-responsive.img-center}

Une fois validé, toutes les couches sont filtrées aussi bien sur la carte que dans le tableau de données.

Pour supprimer le filtrage, il suffit de cliquer sur le cercle pour faire apparaître un menu contextuel et cliquer sur "Annuler la recherche".
