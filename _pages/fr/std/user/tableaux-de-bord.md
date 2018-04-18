---
layout: sidebar
title: Tableaux de bord
categories: documentation
permalink: /tableaux-de-bord
lang: fr
ref: dashboards
---

# Tableaux de bord

Les tableaux de bord permettent aux commerciaux et managers de visualiser des informations clés à partir des données d'objets Salesforce.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-overview.jpg){:.img.img-responsive.img-center}

Ils sont consultables depuis :

- Une sélection géographique
- Un objet sur la carte
- Les listes associées à un objet

## A partir d’une sélection géographique

En sélectionnant des objets grâce à l’outil de sélection, les tableaux de bord les prennent en compte pour mettre à jour les données utilisées.

Par exemple, une sélection de comptes permet d’accéder à un tableau de bord sur leurs opportunités.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-liste_dispos.png){:.img.img-responsive.img-center}
Liste des tableaux de bords disponibles

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-suite_selection.png){:.img.img-responsive.img-center}
Tableau de bord en fonction des objets sélectionnés

## A partir d’un objet

Les tableaux de bord peuvent aussi être accessibles à partir de la fiche d’information d’un objet sur la carte.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-fiche_info.png){:.img.img-responsive.img-center}

## A partir des listes associées

Le tableau de bord basé sur les opportunités de l’exemple précédent est accessible à partir de l’onglet Opportunités des listes associées à un compte.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-listes_associees.png){:.img.img-responsive.img-center}

L’utilisateur obtient alors un tableau de bord dont les données proviennent des opportunités de cette liste.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-opps.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert">Afin d’éviter d’atteindre les limites de longueur d’URL supportée par les navigateurs et de ce fait envoyer à Salesforce des données incohérentes, seuls les 100 premiers éléments de la liste associée ou de la sélection sont pris en compte.</div>

Voir l'[article de création de tableaux de bord](/tableaux-de-bord-admin) pour plus d'infos sur les visualisations.