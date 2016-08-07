---
layout: sidebar
title: Analyse de données
categories: documentation
permalink: /analytics
lang: fr
ref: analytics
---

## Analyse de données

Galigeo for Salesforce permet d’afficher vos données à travers les représentations suivantes :

- Camemberts
- Symboles proportionnels
- Aplats de couleur (ou carte choroplèthe)

Pour afficher ces représentations, il faut définir une source de données et des « analyses » basées sur cette source de données.

### Gérer les sources de données

Dans l’onglet Galigeo Admin, cliquez sur « Analyses » pour accéder au panneau d’administration des sources de données.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-130.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Nouveau » pour créer une source de données.

#### ![feet]({{ site.url }}/assets/foot.png) 1ère étape : Renseigner les propriétés de source de données

Choisissez un nom pour votre source de données et sélectionnez un type de source de données.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-135.png){:.img.img-responsive.img-center}

Initialement, aucune couche cartographique n’est sélectionnée. Cliquez sur l’icône ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-057.png) pour en choisir une.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-138.png){:.img.img-responsive.img-center}

Sélectionnons les « Zipcodes (USA) – SAMPLE » et cliquons sur le bouton « Enregistrer ». Il est désormais possible d’associer une source de données à cette couche cartographique.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-139.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) 2ème étape : Définir les données

Il y a deux façons de définir les données qui seront utilisées en tant que source de données :

1. Mode Simple : Choisir les champs d’un objet (standard ou custom)
2. Mode avancée : écrire une requête complète SoQL

Dans l’exemple ci-dessous, nous désirons obtenir le chiffre d’affaires annuel des comptes par code postal (ZIP code).

- **Mode simple** :
  Nous sélectionnons l’objet Compte en tant qu’objet source.
  Tous les champs de l’objet Compte apparaissent dans les champs disponibles. Nous choisissons BillingPostalCode (code postal de facturation) et AnnualRevenue (chiffre d’affaires annuel) et cliquons sur le bouton contenant une flèche vers la droite.
  Nous choisissons de grouper nos données par code postal de facturation. Il faut maintenant préciser une fonction d’agrégation de .
  Sélectionnons la fonction « SUM » pour le champ « AnnualRevenue ».

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-142.jpg){:.img.img-responsive.img-center}

  Pour chaque champ sélectionné, les icônes suivantes permettent des actions suivantes :

  - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) : supprimer le champ
  - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-144.png) : déplacer le champ vers le haut
  - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-145.png) : déplacer le champ vers le bas

  Un aperçu des données est disponible en cliquant sur « Tester la requête » :

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-146.png){:.img.img-responsive.img-center}

- Mode avancé SOQL :
  Cochez la case « Requête SOQL » pour basculer en mode avancé. Ce mode permet à l’utilisateur de sélectionner les données grâce à une requête SOQL. L’exemple précédent peut être reproduit avec la requête SOQL suivante :

  ```sql 
  SELECT BillingPostalCode, SUM(AnnualRevenue) AnnualRevenue
  FROM Account 
  GROUP BY BillingPostalCode
  ```
  Vous pouvez trouver plus d’informations sur comment définir une requête Salesforce [Object Query Language](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql.htm) (SOQL).

  {:.table.table-bordered}
  | ![warning]({{ site.url }}/assets/warning.png)     | Les requêtes sont soumises aux [Salesforce Governors Limits](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_gov_limits.htm). L’utilisation du mode simple est appropriée pour un nombre limité de lignes, aucune clause WHERE n’est utilisée pour limiter la requête. Pour filtrer vos données, nous recommandons l’utilisation du mode avancé SOQL. |
  | ![notice]({{ site.url }}/assets/notice.png)  | Que ce soit en mode simple ou avancé, il est indispensable de respecter la règle suivante : **Le premier champ doit correspondre à la couche géographique et être de type String**. <br><br>Dans notre exemple :<br> - Le code postal (Billing ou Shipping PostalCode) de l’objet Compte correspond à notre couche ZipCodes (USA). <br>Les 2 sont basés sur les codes postaux des Etats-Unis ! |

Une fois satisfait de votre source de données, cliquez sur le bouton « Enregistrer » pour la sauvegarder. Vous êtes redirigé vers un panneau reprenant les informations relatives à votre source de données.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-151.png){:.img.img-responsive.img-center}

La source de données est présentée en 3 parties :

1. Propriétés : affiche les propriétés de la source de données (nom, couche géographique utilisée et métriques représentées)
  
    Le nom et la couche géographique peuvent être édités directement depuis cet écran. Il suffit de cliquer sur l’un d’eux.
  
    Dès lors, le nom peut être modifié à partir d’un champ texte :

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-152.png){:.img.img-responsive.img-center}

    Vous pouvez enregistrer ou annuler les changements en cliquant sur le bouton correspondant :

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-153.png){:.img.img-responsive.img-center}

    Pour changer de couche géographique, sélectionnez une valeur de la liste déroulante :

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-156.png){:.img.img-responsive.img-center}

    Si aucune couche n’est sélectionnée, l’utilisateur ne pourra pas créer d’analyse.

2. Couches géographiques :
  
    a. Gérer les couches géographiques :

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) Ajouter une couche géographique. Cliquez sur l’icône pour afficher une liste déroulante où sont affichées les couches disponibles.Sélectionnez une couche et cliquez sur le bouton « Enregistrer » pour confirmer :

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-158.png){:.img.img-responsive.img-center}

      Le panneau de couches affiche plusieurs couches :

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-160.png){:.img.img-responsive.img-center}

      Vous pouvez modifier la couche utilisée pour segmenter la source de données :

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-161.png){:.img.img-responsive.img-center}

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) : Supprimer une couche

    b. Gérer des catégories

      Une catégorie peut être assignée à une analyse. Cela permet de présenter à l’utilisateur final une liste de toutes les analyses groupées par catégorie pour l’aider dans la création de sa carte.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-163.png){:.img.img-responsive.img-center}

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) Cliquez sur l’icône pour créer une nouvelle catégorie.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-165.png){:.img.img-responsive.img-center}

      Le panneau des catégories affiche alors la nouvelle catégorie :

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-166.png){:.img.img-responsive.img-center}

      Si aucune catégorie n’est associée à une analyse, double cliquez sur le message « Double clic pour renseigner la catégorie ».

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-167.png){:.img.img-responsive.img-center}

      Sélectionnez une catégorie depuis la liste déroulante,

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-168.png){:.img.img-responsive.img-center}

      Cliquez sur l’icône disquette pour enregistrer l’analyse.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) : Supprimer une catégorie

3. Analyses : Ce panneau affiche toutes les analyses créées sur les métriques de la source de données.

    a. Actions disponibles

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) Ajouter une analyse. Cliquez sur l’icône pour lancer l’assistant d’analyses.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/duplicate.png) Dupliquer une analyse existante.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/pencil.png) Modifier une analyse

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) Supprimer une analyse

    b. Seuils de visibilité

      Les seuils de visibilité permettent de spécifier les niveaux de zoom auxquels vous souhaitez voir apparaître vos analyses thématiques. Ils s'appliquent au niveau de la source de données.
       
      Ces niveaux de zoom vont de la vision globale du monde au numéro de rue.
       
      Dans l’exemple ci-dessous, nous avons créé des analyses qui affichent des informations au niveau départemental. Elles s’affichent pour les zooms de haut niveau.
      Pour les niveaux de zoom plus détaillés, les analyses affichent les mêmes informations au niveau du code postal.
       
      Notez également, que dans le panneau Analyses de la carte, les zooms analyses cachées apparaissent en grisé.

      {:.table}
      | Analyses sur le département | Analyses sur le code postal |
      | :----------:     | :--------: |
      | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new8.png){:.img.img-responsive.img-center}     | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new9.png){:.img.img-responsive.img-center} |
      | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new10.png){:.img.img-responsive.img-center}     | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new11.png){:.img.img-responsive.img-center} |

    

### Cloner une source de données

Supposons qu’une source de données a été définie sur les Comptes dont le Record Type est "Client". Elle utilise la where clause ci-dessous :

```sql
WHERE RecordType.Name = 'Client'
```

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new13.png){:.img.img-responsive.img-center}

Nous voulons maintenant produire les mêmes analyses mais, cette fois, sur les Comptes dont le record type est “Prospect”. Pour ce faire, clonons notre source de données et ses analyses.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new14.png){:.img.img-responsive.img-center}

Dans la tab "Analytics" du panneau d’administration, cliquez sur l’icône ![Duplicate]({{ site.url }}/assets/img-std-admin/duplicate.png) saisissez le nom de votre nouvelle source de données et enregistrez-la.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new15.png){:.img.img-responsive.img-center}

Sur la page de nouvelle nouvelle source de données "ADS1_Prospect", toutes les propriétés de "ADS1_Client" ont été clonées.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new16.png){:.img.img-responsive.img-center}

Cliquez sur le bouton modifier et changez la whereclause pour qu’elle ne renvoie que les Comptes dont le record type est "Prospect":

```sql
WHERE RecordType.Name = 'Prospect'
```

### Gérer les analyses

Avec notre source de données « Comptes par code ZIP » connectée aux « USA Zip Codes », nous pouvons à présent créer des analyses.
Cliquez sur l’icône ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) dans le panneau des analyses pour démarrer l’assistant d’analyses.

Le Thematic Wizard est une application hébergée sur Heroku. La première fois que vous la démarrez, vous allez être invité à autoriser cette application à accéder à vos données Salesforce et à accéder à l’application Analytic Wizard :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-175.png){:.img.img-responsive.img-center}

Vous pouvez choisir parmi les types d’analyse suivants :

- **Symboles uniques**

  Ce type d'analyse permet de tracer les contours d’une couche cartographique ou de placer un symbole au centre de celle-ci.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new1.png){:.img.img-responsive.img-center}

- **Plages de valeurs**

  Ce type d’analyse permet de séparer un champ contenant des données numériques entre plusieurs plages de valeurs. À chaque plage de valeurs est associée une couleur unique.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-180.jpg){:.img.img-responsive.img-center}

  L’assistant de création s’affiche comme ci-dessous :

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new2.png){:.img.img-responsive.img-center}

  Vous choisissez le champ de données que vous souhaitez utiliser pour l’analyse. 

  Pour déterminer les seuils, trois méthodes de calcul sont disponibles :

  - Effectifs égaux :
    Cette méthode permet de répartir les valeurs de manière à ce que chaque plage contienne le même nombre de valeurs. Les seuils sont calculées automatiquement (et recalculées à chaque rafraichissement).
  - Intervalles égaux :
    Cette méthode permet de répartir les valeurs en plages de même taille. Les seuils sont calculées automatiquement (et recalculées à chaque rafraichissement).
  - Seuils naturels :
    Dans cette méthode, les seuils sont calculés automatiquement et correspondent aux sauts de valeurs significatifs.
  - Classification manuelle :
    Cette méthode vous permet de déterminer vous mêmes les seuils séparant les classes entre elles. Exemple : Séparer les valeurs en-dessous et au dessus de 0.

  Par défaut, le nombre de classe est de 4, vous pouvez séparer votre jeu de données entre 15 classes maximum.

  Pour modifier modifier le symbole et la couleur d'une classe, cliquez sur le crayon :

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new7.png){:.img.img-responsive.img-center}

- **Valeurs individuelles**
  
  Ce type de représentation permet l’affichage de données discrètes où une couleur représentera une valeur unique.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-183.jpg){:.img.img-responsive.img-center}

  Ce type de représentation s’applique principalement aux champs ayant des valeurs alphanumériques (chaînes), elle est aussi utilisable avec des champs numériques (prenant moins de 15 valeurs).

  La configuration est similaire à celle des plages de valeurs :

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new3.png){:.img.img-responsive.img-center}

- **Symboles proportionnels**

  Ce type de représentation permet d’afficher des cercles proportionnels aux valeurs numériques.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-185.jpg){:.img.img-responsive.img-center}

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new4.png){:.img.img-responsive.img-center}

- **Diagramme à secteurs**

  Ce type de représentation permet l’affichage des plusieurs indicateurs en utilisant des camemberts.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-187.jpg){:.img.img-responsive.img-center}

  Ce type de représentation s’applique spécifiquement aux champs de valeurs numériques.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new5.png){:.img.img-responsive.img-center}

- **Libellé**

  Affiche la valeur d'un indicateur ou un label géographique sous forme de texte sur la carte. 

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new6.png){:.img.img-responsive.img-center}

Lorsque la configuration de l’analyse est terminée, enregistrez-la en cliquant sur le bouton **« Sauvegarder »**. En cliquant sur le bouton **« Annuler »** la configuration sera annulée.

Après avoir créé l’analyse, dans le panneau d’administration de la source de données, l’utilisateur peut voir les analyses créées pour chaque source de données.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new12.png){:.img.img-responsive.img-center}

L'utilisateur final, à partir de l’interface de la carte peut désormais ajouter ou cacher des analyses et afficher leurs légendes comme illustré ci-dessous :

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-192.jpg){:.img.img-responsive.img-center}

### Cloner une analyse

Supposons qu’une source de données a été définie sur les comptes dont le record Type est “Client” et dont le code postal commence par 59 ou 62. Des analyses ont aussi été définies pour cette objet.

```sql
WHERE Postal_Code__c Like '59%' or Postal_Code__c Like '62%'
```

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new17.png){:.img.img-responsive.img-center}

Nous souhaitons répliquer ces analyses pour les Clients dont les codes postaux commencent par 78 ou 75. Dans la source de données, modifions la clause where :

```sql
WHERE Postal_Code__c Like '78%' or Postal_Code__c Like '75%'
```
Une fois l’opération effectuée. De nouvelles analyses sont prêtes à être consommées par les cartes.