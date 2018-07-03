---
layout: sidebar-advanced
title: Sectorisation à partir de vos données Salesforce
categories: advanced
permalink: /secteurs
lang: fr
ref: secteurs
---

# Secteurs

Dans l’onglet « Galigeo Admin (full) » cliquez sur « Sectors » :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-039.png){:.img.img-responsive.img-center}

Cet onglet présente la liste des secteurs enregistrés. L’administrateur peut en créer, les modifier, les rafraîchir ou les supprimer.
Un secteur correspond à l’unité géographique de base (par exemple : les codes postaux (ZIP) aux Etats-Unis) utilisée pour construire des territoires.

## Créer un secteur

Nous nous proposons ici de construire un secteur basé sur les métriques de l’objet Compte et les cartographier (ou les joindre) au ZipCode géographique.

Pour créer un secteur, cliquez sur l’icône ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-040.png) pour accéder à la page de création.

### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Définir les propriétés du secteur

Donnez un nom à votre secteur et choisissez dans la liste la géométrie de base utilisée pour joindre les métriques Salesforce. Choisissons ici « zipcodes ».

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-045.png){:.img.img-responsive.img-center}

### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Définir les métriques

Sélectionnez un objet Salesforce dans la liste d’objets source. La liste affiche des objets custom et standard comme Compte, Contact, Piste et Opportunité (objets standard avec le champ zipcode). 

Choisissons l’objet Compte :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-050.png){:.img.img-responsive.img-center}

Une fois l'objet source sélectionné, la liste des champs s’actualise. Chaque champ s’affiche avec son étiquette et son nom :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-053.png){:.img.img-responsive.img-center}

Sélectionnons « Code postal de l’adresse de facturation », « Employés » et « Chiffre d’affaires annuel » puis cliquons sur « Ajouter ».

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-054.jpg){:.img.img-responsive.img-center}

Trois champs ont été ajoutés aux « Champs sélectionnés ».

Afin d’éviter de dépasser les limites du gouverneur (par exemple le nombre de lignes), il est possible de définir une clause WHERE en utilisant la syntaxe SOQL (sans le mot cle « WHERE »). 

Sélectionnons uniquement les Comptes dont le Chiffre d’affaires annuel est supérieur à 1000. (Pour plus de détail sur les clauses WHERE SOQL, voir [Condition Expression Syntax](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_conditionexpression.htm)). 

Cette clause WHERE est néanmoins facultative.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-057.png){:.img.img-responsive.img-center}

Afin d’agréger le résultat par code postal, sélectionnons dans la liste déroulante « Group by » le champ « Code postal de l’adresse de facturation » :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-058.png){:.img.img-responsive.img-center}

La liste des champs sélectionnés s’actualise :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-059.png){:.img.img-responsive.img-center}

La liste des champs se présente sous la forme d'un tableau avec deux colonnes :

- Actions :

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-071.png) Supprimer un champ de la liste

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-061.png) Déplacer un champ vers le haut

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-062.png) Déplacer un champ vers le bas


- Fonctions d’agrégation : il est nécessaire de définir une fonction d’agrégation pour tous les champs excepté pour celui utilisé pour faire la joiture ( "Code postal de l’adresse de facturation" dans notre exemple).

	Les fonctions d’agrégation disponibles : Avg, Count, Max, Min, Sum. (voir [Salesforce SOQL Aggregate functions](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_agg_functions.htm))
- Étiquette de champ : cette colonne est remplie automatiquement avec les étiquettes de champ et ne peut pas être modifiée
- Alias de champ : permet de modifier l’alias du résultat de requête et de présenter des noms de champs plus faciles à lire pour les utilisateurs.

La requête générée sera :

```sql
SELECT BillingPostalCode zcode,SUM(NumberOfEmployees) NbEmp,AVG(AnnualRevenue) AvgRevenue
FROM Account
WHERE AnnualRevenue>1000
GROUP BY BillingPostalCode
```


Cliquez sur le bouton « Test » dans la section « Sample Result » pour avoir un aperçu.

Si le nombre de lignes (sans groupage par champ) est supérieur à 50.000, un message sera affiché et l’utilisateur sera invité à modifier la clause WHERE pour avoir une requête plus sélective.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-065.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Save » pour enregistrer votre secteur et retourner à la page d’administration Galigeo Admin (full).

Après avoir enregistré, un processus de traitement par lots est planifié. Vous recevrez un e-mail lorsque le processus est terminé (en général, le processus dure moins de 5 minutes).

## Gérer des secteurs

Rendez-vous sur l’onglet « Galigeo Admin (full) » et sélectionnez « Sector ».

La liste des secteurs s’affichent dans un tableau avec quatre colonnes :

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-068.png){:.img.img-responsive.img-center}

Pour chaque secteur :

- Action :

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-069.png) Modifier la définition du secteur

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-070.png) Rafraichir le secteur en recalculant toutes les valeurs dans par lot. Lorsque la tâche est finie, l’utilisateur recevra un e-mail.

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-071.png) Effacer un secteur et tous les projets Territory Management qui se reposent sur lui

- Name: affiche le nom du secteur
- Object: affiche l’objet Salesforce utilisé
- Batch in progress: indique si un rafraichissement dans un traitement par lots est en cours

Ces secteurs sont utilisés pour créer un projet Territory Management dans l’application TM Designer (se référer au [Guide utilisateur](/presentation-adv)).

