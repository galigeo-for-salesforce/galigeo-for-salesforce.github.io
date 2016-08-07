---
layout: sidebar
title: Manage sectors
categories: documentation
permalink: /sectors-en
lang: en
ref: secteurs
---

## Manage sectors

In the "Galigeo Admin (advanced)" tab, click on "Sectors":

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-039.png){:.img.img-responsive.img-center}

This component presents the list of declared custom sectors and admin can create, refresh or delete them.
A sector is the based geographical unit (for example: the zipcode in the USA) used to build territories.

### Create a sector

We propose here to build a sector based on metrics from the Account object and map (or join) them on the geographic ZipCode.

To create a sector, click on the ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-040.png) icon to be forwarded to the creation page.

#### ![feet]({{ site.url }}/assets/foot.png) Step 1: Define sector properties

Give a name to your sector and choose from the list the base geometry used to join the salesforce metrics. Here let's choose "zipcodes".

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-045.png){:.img.img-responsive.img-center}

#### ![feet]({{ site.url }}/assets/foot.png) Step 2: Define metrics

Select a Salesforce object in the source object list. The list displays Custom object and Standard object like Account, Contact, Lead and Opportunity (standard objects with zipcode field). 

Let choose the Account Object:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-050.png){:.img.img-responsive.img-center}

Once a source object selected, the fields list is updated. Each field is displayed with its label and its name:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-053.png){:.img.img-responsive.img-center}

Let select "Billing Zip/Postal Code", "Employees" and "Annual Revenue" and then click "Add".

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-054.jpg){:.img.img-responsive.img-center}


The selected fields now contains those three fields.

In order to limit the reach of Governors Limits (for example the number of rows), it's possible to define the content of a where clause using the SOQL syntax (without the keyword "WHERE"). 

Let's choose to select only Accounts with Annual Revenue greater than 1000. (For more details about SOQL WHERE Clauses, see [Condition Expression Syntax](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_conditionexpression.htm)). 

The WHERE clause is optional.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-057.png){:.img.img-responsive.img-center}

To be able to aggregate result on zipcodes, select in the list right to the "Group by" the field "Billing Zip/Postal Code":

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-058.png){:.img.img-responsive.img-center}

Once a group by field is chosen, the selected fields list is update:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-059.png){:.img.img-responsive.img-center}

The fields list is presented in a table format with four columns:

- Actions:

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-071.png) Remove a field from the list

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-061.png) Move the field up

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-062.png) Move the field down

- Aggregate function: as we use a group by field, it is necessary to define an aggregate function for all field different then the field used to group with.
	Available aggregate functions are: Avg, Count, Max, Min, Sum. (see [Salesforce SOQL Aggregate functions](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_agg_functions.htm))
- Field label: this column is automatically filled with the field label and cannot be modified
- Field alias: allows to modify the alias in the query result.

The generated query will be:

```sql
SELECT BillingPostalCode zcode,SUM(NumberOfEmployees) NbEmp,AVG(AnnualRevenue) AvgRevenue
FROM Account
WHERE AnnualRevenue>1000
GROUP BY BillingPostalCode
```


Click the "Test" button in the "Sample Result" section to have a preview.

If the number of rows (without grouping by the field) is greater than 50000, a message is displayed and user is invited to modify the WHERE clause to have a more selective query.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-065.png){:.img.img-responsive.img-center}

And click "Save" button to save your sector and being forwarded to the Galigeo Admin page. When saving your sector, a batch process is scheduled and you will received a mail when the job is done.

### Manage sectors

Go to the "Galigeo Admin (advanced)" tab and select "Sector".
The list of custom sectors are displayed in a table with four columns:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-068.png){:.img.img-responsive.img-center}

For each sector:

- Action: allows to do some actions on a sector

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-069.png) Change the sector definition

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-070.png) Refresh the sector by recalculating all values in batch. When the job is done, user will receive an e-mail.

	![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-071.png) Delete the sector and all Territory Management projects based on it.

- Name: displays the name of the sector
- Object: displays the Salesforce Object used
- Batch in progress: indicates if a refresh in a batch processing is in progress

Those Sectors can be used to create a Territory Management Project in the TM Designer App (refers to the [User Guide](/introduction-adv-en)).

