---
layout: sidebar
title: Affectation par secteur des objets Salesforce (Comptes...)
categories: documentation
permalink: /assignment-adv-en
lang: en
ref: affectation-adv
---

# Records Assignment

Click on the "Records Assignment" tab to access to the mass records assignment page.

The goal of this page is to do a mass records assign for some object. The owner assignment is based on a Territory project and the user assign to a territory.

The page is divided in two part:

- logic: where the user choose some object, select a territory project and optionally define some filter
- map: a map visualization where the records and the territories of a project are plotted.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-056.png){:.img.img-responsive.img-center}

## Records and project selection

Select a map object from the list. This list contains all the map objects defined by the SellWhere Visit Planning administration page where for an object the address fields are mapped and the geolocation (latitude/longitude) is defined. Let's select the Accounts map object.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-057.png){:.img.img-responsive.img-center}

Click on the "Test" button to see all the records of the Accounts map object on the map.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-058.png){:.img.img-responsive.img-center}

and some informations are updated, like the number of records matched.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-059.png){:.img.img-responsive.img-center}

Then select a Territory management project (this list contains all the project defined using the Territory Design).

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-060.png){:.img.img-responsive.img-center}

Once a project is selected, the map is updated and the zoom is adapted to the extend of all the territories defined in the selected project.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-061.jpg){:.img.img-responsive.img-center}

This sample project has territories around Providence.

Now let's add some filters like: we want all prospects with annual revenue for 2012 greater than $50000.

Than click "Test" button to refresh the information and the map.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-062.jpg){:.img.img-responsive.img-center}

There are 106 records that matched the criteria.

## Records Assignment

Once you are satisfied with the criteria, click on the "Assign" button. 

A popup informs the user that a batch process is scheduled.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-063.png){:.img.img-responsive.img-center}

Once the process is done, the user receives an email with some informations as follow:

{:.table.table-bordered}
|Hi Admin Demo SellWhere<br><br>Territory Mass Records Assignment Batch process for project Demo SellWhere on record type 'Account' is finished.<br><br>with the following condition: Type = 'Prospect' AND Revenue_2012__c > 50000<br><br>Assignment details<br>• Territory 'Second Territory' has 3 records assigned to user Providence Sales Rep. (id=005b0000001BhqBAAS).<br>• Territory 'First Territory' has 39 records assigned to user Providence Sales Rep. (id=005b0000001BhqBAAS).|

If any errors occurred while the process, they are mentioned in the mail. For each territories, there is the number of the records to the user for whom the territory is assigned.
