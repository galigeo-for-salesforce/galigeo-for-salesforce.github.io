---
layout: sidebar
title: Listes associées
categories: documentation
permalink: /listes-associees
lang: fr
ref: related-lists
---

# Listes associées

Les Listes associées vous permettent de voir les objets liés à un point et leurs données, et de les afficher sur la carte s’ils sont géolocalisés.

L’icône ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_rel_lists-sm.png), une des [actions dans la fiche d’information d’un objet](/actions#actions-standard), permet d’obtenir les différentes listes associées à celui-ci. Le résultat est affiché dans un tableau en bas de la carte et les différentes listes sont regroupées par onglet.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-tableau.png){:.img.img-responsive.img-center}

Plus précisément dans ce tableau, on retrouve :

## Vues de liste

En haut à gauche, un menu déroulant avec les [vues de liste](https://help.salesforce.com/articleView?id=listviews_parent.htm&type=0) prédéfinies permet de rafraîchir le tableau de données situé en dessous.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-vues.png){:.img.img-responsive.img-center}
Vues sur une liste associée

Ce sont les mêmes vues disponibles dans l’onglet Salesforce.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-vues_sf.png){:.img.img-responsive.img-center}
Vues définies pour les Opportunités

Utiliser ces vues pour un objet donné a des avantages multiples :

- Utilisation des listes accessibles pour un utilisateur donné
- Les champs choisis et affichés dans le tableau de résultat sont les mêmes que ceux de la vue
- Pas de paramétrage supplémentaire

Se référer à la [doc Admin](/listes-associees-admin/#vues-de-liste) si un message d'erreur apparaît.

## Visualisation sur la carte

En haut à droite, si les objets de la liste ont été paramétrés comme étant géographiques, une case à cocher permet de les visualiser sur la carte (si les informations nécessaires à la localisation sont présentes).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-visualisation_carte.png){:.img.img-responsive.img-center}

## Tableaux de bord

Si des tableaux de bord ont été préalablement définis sur ce type d’objet, il apparaissent dans une liste déroulante. Ils sont actualisés en fonction du résultat de la vue sélectionnée.