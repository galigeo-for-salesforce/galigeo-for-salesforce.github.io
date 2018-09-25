---
layout: sidebar
title: Statistiques
categories: documentation
permalink: /statistiques
lang: fr
ref: statistics
---

# Statistiques

La section « Statistiques » de la page de configuration d’un objet géographique vous donne la possibilité de :

1. Choisir les fonctions standard à faire apparaître dans le tableau de sélection
2. Définir un ensemble de formules personnalisées

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-admin.png){:.img.img-responsive.img-center}

Pour y accéder, cliquez sur le bouton de modification de l'objet géographique : 

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/fiche_info_etiquettes-modifier.png){:.img.img-responsive.img-center.img-bordered}

## Fonctions standard

Cliquer sur l’icône "+" pour choisir des fonctions telles que le nombre, le min, le max, la moyenne, la médiane et la somme.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-add_std_function.png){:.img.img-responsive.img-center}

Il est possible de les ordonner par glisser-déposer grâce aux points verticaux.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-std_function_order.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert"><strong>Note :</strong> Si aucune fonction n’est choisie, alors elles seront toutes disponibles dans l’outil de sélection.</div>

## Formules personnalisées

Cliquer sur l’icône "+" pour créer une nouvelle formule.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-custom_formulas.png){:.img.img-responsive.img-center}

Une fenêtre modale s’affiche invitant l’utilisateur à:

- Renseigner un nom
- Choisir des champs et insérer un opération (+,-,/,*)
- Modifier la formule générée
- Définir le format : libellé (#val sera remplacée par le résultat de l’évaluation de la formule), nombre de chiffres après la virgule

Pour rajouter plusieurs fois un même champ, il suffit de cliquer sur le champ voulu dans la liste des champs déjà sélectionnés.

Parmi les champs disponibles seuls les champs numériques sont disponibles.

Cliquer sur le bouton « Test » pour évaluer l’expression.

<div class="alert alert-info" role="alert"><strong>Note :</strong> L’expression est évaluée avec une valeur égale à 1 pour tous les champs.</div>

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-custom_formula_definition.png){:.img.img-responsive.img-center}

Cliquer sur « Enregistrer » pour valider la formule, qu'on retrouve dans la liste. Il possible d'ordonner les formules par glisser-déposer avec les trois points verticaux.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-custom_formula_added.png){:.img.img-responsive.img-center}

Les formules apparaissent désormais dans le tableau en bas de la carte après une [sélection](/selection).

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/statistics-map.png){:.img.img-responsive.img-center}