---
layout: sidebar
title: Affectation par secteur des objets Salesforce (Comptes...)
categories: documentation
permalink: /affectation-adv
lang: fr
ref: affectation-adv
---

## Affectation des enregistrements

Cliquez sur l’onglet « Records Assignment » pour accéder à la page d’affectation des enregistrements en masse.

Cette page permet d’affecter en masse des enregistrements à des utilisateurs Salesforce. L’affectation à un propriétaire se base sur un projet de territory management où des collaborateurs ont été assignés à des territoires.

La page est divisée en deux parties :

- Règles d’affectation : l’utilisateur choisit un objet, sélectionne un projet de territoire et définit, s’il le souhaite, un filtre pour limiter les enregistrements à affecter

- Carte : Affiche une visualisation des enregistrements et des territoires concernés par l’opération.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-056.png){:.img.img-responsive.img-center}

### Sélection des enregistrements et du projet

Sélectionnez un objet géographique de la liste déroulante. Cette liste contient tous les objets géographiques présents dans la page d’administration de Galigeo Standard Edition. Sélectionnons l’objet géographique Accounts.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-057.png){:.img.img-responsive.img-center}

Cliquez sur le bouton « Test » pour voir tous les enregistrements de l’objet géographique Accounts sur la carte.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-058.png){:.img.img-responsive.img-center}

Le nombre d’enregistrements correspondants apparaît.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-059.png){:.img.img-responsive.img-center}

Sélectionnez ensuite un projet Territory Management (cette liste contient tous les projets définis à l’aide du Territory Design).

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-060.png){:.img.img-responsive.img-center}

Une fois le projet sélectionné, la carte s’actualise et zoome sur l’étendue de tous les territoires définis dans l’objet sélectionné.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-061.jpg){:.img.img-responsive.img-center}

L’exemple ci-dessus reprend des territoires autour de la ville Providence.

Ajoutons le filtre suivant : nous voulons tous les Accounts de type Prospect ayant un chiffre d’affaires supérieur à $50000 en 2012.

Cliquez ensuite sur le bouton « Test » pour rafraichir les données et la carte.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-062.jpg){:.img.img-responsive.img-center}

106 enregistrements correspondent à ce critère.

### Affectation des enregistrements

Une fois que vous avez sélectionné les comptes qui vous intéressent, cliquez sur le bouton « Assign ».

Une fenêtre informe l’utilisateur qu’un processus de traitement par lots est planifié.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-063.png){:.img.img-responsive.img-center}

Une fois le processus terminé, l’utilisateur reçoit un e-mail avec les informations suivantes :

{:.table.table-bordered}
|Hi Admin Demo SellWhere<br><br>Territory Mass Records Assignment Batch process for project Demo SellWhere on record type 'Account' is finished.<br><br>with the following condition: Type = 'Prospect' AND Revenue_2012__c > 50000<br><br>Assignment details<br>• Territory 'Second Territory' has 3 records assigned to user Providence Sales Rep. (id=005b0000001BhqBAAS).<br>• Territory 'First Territory' has 39 records assigned to user Providence Sales Rep. (id=005b0000001BhqBAAS).|

Si des erreurs sont survenues durant le processus, elles sont mentionnées dans l’e-mail. Pour chaque territoire, il y a le nombre d’enregistrements affectés au collaborateur sélectionné.
