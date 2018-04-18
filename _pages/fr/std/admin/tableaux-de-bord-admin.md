---
layout: sidebar
title: Tableaux de bord
categories: documentation
permalink: /tableaux-de-bord-admin
lang: fr
ref: dashboards-admin
---

# Tableaux de bord

Les tableaux de bord sont configurés à partir d’une requête SOQL pour laquelle on ajoute des éléments comme des graphes, une carte et/ou le tableau de données.

## Configuration

La liste des tableaux de bords disponibles est accessible à partir de l’onglet “Dashboards” de la page d’administration.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-tab.png){:.img.img-responsive.img-center}

Ajouter un nouveau tableau de bord se fait en cliquant sur le bouton “Nouveau”. L’utilisateur est alors redirigé vers la page de configuration.

La page de configuration est composée de deux parties :

- Paramétrage
- Visualisation

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-configuration.png){:.img.img-responsive.img-center}

### Paramétrage

Lors du paramétrage du tableau de bord l’utilisateur est invité à renseigner :

- Un nom
- Le type d’objet sur lequel porte le tableau de bord
- Éventuellement le champ permettant d’identifier un parent. Par exemple, en gardant en tête le schéma de la relation entre des comptes et des opportunités, il est possible de réaliser un tableau de bord sur les opportunités portant uniquement sur des comptes sélectionnés en choisissant “ID du Compte” dans la liste des champs de relation parent
- La requête SOQL qui sera utilisée pour récupérer les données servant à alimenter les différents graphiques

Vous pouvez trouver plus d’informations dans la documentation Salesforce sur comment définir une requête [Salesforce Object Query Language](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/) (SOQL).

<div class="alert alert-warning" role="alert">Les requêtes sont soumises aux [Salesforce Governors Limits](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_limits_intro.htm). Assurez-vous de créer des filtres plus sélectifs afin de ne pas atteindre ces limites.</div>

### Prévisualisation

Dans la partie prévisualisation, il possible de paramétrer les différents graphiques ajoutés, de changer leur ordre d’affichage ou de les supprimer.

Chaque composant possède un ensemble d’icônes en haut à droite :

- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_ordre.png) : réordonner le composant
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_proprietes.png) : modifier les propriétés du composant
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_supprimer.png) : supprimer le composant

Le tableau de données sera toujours visible ici mais une option permet de l’afficher ou non dans le tableau de bord final.
A noter que cette prévisualisation est faite uniquement sur les 100 premières lignes.

En dessous de la zone de saisie de la requête SoQL, il y a trois boutons :

- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-bouton_ajouter.png) : permet d’ajouter un élément graphique au tableau de bord
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-bouton_tableau.png) : indiquer si l’on souhaite afficher ou non le tableau de données dans le tableau de bord
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-bouton_actualiser.png) : actualise les données en fonction de la requête définie

## Visualisations

5 types de visualisations sont disponibles :

{:.table.table-bordered}
|Visualisation|Usage |
| ------------- | ------------- |
|Nombre|Affiche une simple valeur numérique |
|Diagramme à barres|Comparaison d’une série de données |
|Anneau |Contribution de chaque valeur en proportion à l’ensemble |
|Diagramme courbe |Variation de valeur sur une période |
|Carte |Carte des points de la sélection |

En dehors du composant graphique “Carte” qui ne requiert pas de configuration hormis le titre, les autres possèdent des éléments de configuration qui leurs sont propres.

### Nombre

Il permet d’afficher une valeur numérique et se paramètre en choisissant le champ à agréger (parmi les champs de type numériques) et la fonction d’agrégation.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-nombre.png){:.img.img-responsive.img-center}

### Diagramme à barres

Ce composant affiche des données en fonction d’une catégorie définie sur l’axe X. Il se configure en choisissant un champ pour l’Axe X, une fonction agrégation et un indicateur.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-barres.png){:.img.img-responsive.img-center}

### Anneau

Il affiche des données en fonction d’une catégorie et représentées sous forme de secteur et triées dans l’ordre décroissant.
Il se configure en choisissant un champ pour qualifier le secteur, une fonction agrégation et un indicateur.
Il est possible de limiter le nombre de valeurs à afficher et éventuellement regrouper les autres valeurs dans un secteur qui sera nommé “Autres”.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-anneau.png){:.img.img-responsive.img-center}

### Diagramme courbe

Ce composant permet d’afficher l’évolution d’indicateur en fonction d’une série temporelle.
Les champs disponibles pour définir l’Axe X doivent être de type Date ou DateTime.
L’ajout/suppression de série se fait par simple clic sur l’icône (ou si déjà sélectionné) devant un indicateur.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-courbe.png){:.img.img-responsive.img-center}

### Carte

Ce composant affiche sous forme d’image les points sélectionnés à partir de l’outil de sélection et pour lesquels le tableau de bord a été rafraîchi. Seul le titre est paramétrable.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-carte.png){:.img.img-responsive.img-center}

Un exemple complet de configuration d’un tableau de bord basé sur les Opportunités :

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-opps.png){:.img.img-responsive.img-center}

En cliquant sur le bouton “Enregistrer” l’utilisateur est redirigé vers la liste des tableaux de bords disponibles.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-liste.png){:.img.img-responsive.img-center}

En cliquant sur l’icône ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_voir.png), il est possible de voir le tableau de bord tel qu’il sera visible au final.