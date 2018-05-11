---
layout: sidebar
title: Data analysis
categories: documentation
permalink: /analytics-admin
lang: en
ref: analytics-admin
---

# Data Analysis

Galigeo for Salesforce allows to create analytics like Pie Chart, Proportional Symbol or Choropleth based on a data.

To achieve this, a Galigeo Admin user need to define a data source and some analytics based on data sources.

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## Manage Data Sources

In the Galigeo Admin tab, click on **"Analytics"** to switch to the Data Sources Administration panel.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-130.png){:.img.img-responsive.img-center}

Click on the "New" button to go the Data Source creation page.

## ![feet]({{ site.url }}/assets/foot.png) Step 1: Fill Data Source Properties

Choose a name for your data source, select the type of the data source.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-135.png){:.img.img-responsive.img-center}

At the first time, there isn't any geographic layer register as mentioned in red. Click on the ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-057.png) icon to register a new layer.

Let select the "Zipcodes (USA) – SAMPLE" and click the "Save" button. 
Now it is possible to choose a layer on which the result will be joined.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-139.png){:.img.img-responsive.img-center}

## ![feet]({{ site.url }}/assets/foot.png) Step 2: Define Data

There are two ways to define what data will be exposed from this datasource:

1. Simple mode: Choose fields from an object (Standard or Custom)
2. Advanced mode: Write a Full SoQL query

For both modes, let's define a datasource for which we want the sum of the annual revenue of accounts by Zip Code.

- **Simple Mode**:
  In the objects dropdown list, select the Account Object.

  The **"Available Fields"** will refresh with all the Account Object fields. Select "Billing Zip/Postal Code" and "Annual Revenue" fields and click Add button (right arrow icon). Then, choose to group the result with the "Billing Zip/Postal Code" field. Once you choose to group your data by a field, you need to define which aggregate function will be used for other fields.
  Let's select the "SUM" function for the "Annual Revenue" field.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-142.jpg){:.img.img-responsive.img-center}

  For each selected fields, the following icons allows different actions:

  - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) : remove the field
  - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-144.png) : move the field up
  - ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-145.png) : move the field down

  Then click the "Test" button to have preview of your data:

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-146.png){:.img.img-responsive.img-center}

- **Full SOQL Mode**:
  Select the "Full SOQL Query" checkbox to switch to the advanced mode. This mode allow the user to enter a SOQL query that will be used to get the data. The previous example can be defined in SOQL query as follow:

  ```sql
  SELECT BillingPostalCode, SUM(AnnualRevenue) AnnualRevenue
  FROM Account 
  GROUP BY BillingPostalCode
  ```

  You can find more informations on how to define a [Salesforce Object Query Language](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql.htm) (SOQL) query.

  {:.table.table-bordered}
  | ![warning]({{ site.url }}/assets/warning.png)     | Queries are subject to the [Salesforce Governors Limits](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_gov_limits.htm). The use of the Simple Mode is well for limited number of rows because there isn't any where clause available to set the query selective. Otherwise, we recommend to use the Full SOQL Mode in order to filter as well your data. |
  | ![notice]({{ site.url }}/assets/notice.png)  | For both simple mode and Full SOQL mode, user needs to follow one rule: **The first field needs to be able to match the geographic layer and type of String**. <br><br>For example: <br> - For USA, you can use a Zip Code field of the Account Object (Billing or Shipping) |

Once you are satisfied with what your Data Source has to expose, click the "Save" button to save it and user is forwarded to the Data Source details page:

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-151.png){:.img.img-responsive.img-center}

From this page, user can go back to the Galigeo Admin page or delete the data source.

The Data Source details page has three main parts:

1. Properties: displays the data source properties like its name, type, which geographic layer is used and what metrics are exposed.
  
    The name and the geographic layer properties can be edited inline. User has to double-click on it.
  
    For the name: in edit mode, an input text is displayed, allowing to change the name:

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-152.png){:.img.img-responsive.img-center}

    The user can save or cancel his changes by clicking on the top button:

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-153.png){:.img.img-responsive.img-center}

    For the geographic layer: in edit mode, a select option list displays all registered geographic layers:

    ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-156.png){:.img.img-responsive.img-center}

    User can change the layer on which the data will be joined. If no layer is selected, user will not be able to create analytics based on the data source metrics.

2. This is common to all Data Sources:
  
    a. Manage geographic layers:

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) Add a geographic layer. Click on the icon to display a popup where all available layers are listed. Select one and click on the "Save" button to register it:

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-158.png){:.img.img-responsive.img-center}

      The layer panel lists several layers:

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-160.png){:.img.img-responsive.img-center}

      It's now possible to change the layer used to join the datasource data:

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-161.png){:.img.img-responsive.img-center}

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png): delete a layer

    b. Manage categories

      A category can be assigned to an analytics to group them. It allow the end user to have a list of all available analytics created by the admin user grouped by category when he's creating his map.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-163.png){:.img.img-responsive.img-center}

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) Add a category. Click on the icon to display a popup. Enter a name for the category and click on the "Save".

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-165.png){:.img.img-responsive.img-center}

      The category panel lists the new category:

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-166.png){:.img.img-responsive.img-center}

      For an analytic, if no category is defined, double click on the message "Double click to set a category".

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-167.png){:.img.img-responsive.img-center}

      Select a category from the list,

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-168.png){:.img.img-responsive.img-center}

      Click on the floppy disk icon to save the analytic.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) : delete a category

3. Analytics: this panel shows all analytics created on the data source's metrics.

    a. Available actions

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) Add an analytics. Click on the icon to display the analytic wizard application.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/duplicate.png) Duplicate an existing analytic.

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/pencil.png) Edit an analytic

      ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-035.png) delete an analytic

    b. Visibility thresholds

      Visibility thresholds allow to set the zoom levels at which you wish to activate your analytics. They work on a data source.
       
      Zoom levels go from world wide view to house number view.
       
      In the example below, we created analtytics displaying information at the level of a french departement. They are displayed for the upper zoom levels.
      For more detailed zoom levels, analytics display the same information at a zipcode level.
       
      In the analytics panel, please note that hidden analytics are grayed.

      {:.table}
      | Departement analytics | zipcode analytics |
      | :----------:     | :--------: |
      | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new8.png){:.img.img-responsive.img-center}     | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new9.png){:.img.img-responsive.img-center} |
      | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new10.png){:.img.img-responsive.img-center}     | ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new11.png){:.img.img-responsive.img-center} |

    

## Clone a data source

Let's assume that a data source has been defined on the Accounts which Record Type is "Client". It uses the whereclause below:

```sql
WHERE RecordType.Name = 'Client'
```

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new13.png){:.img.img-responsive.img-center}

We now want to produce the same analytics on Accounts with "Prospect" Record Type. Let's clone our data source and the corresponding analytics.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new14.png){:.img.img-responsive.img-center}

In the "Analytics" tab of the administration panel, click the ![Duplicate]({{ site.url }}/assets/img-std-admin/duplicate.png) icon, give your new data source a name and save it.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new15.png){:.img.img-responsive.img-center}

On the newly created data source "ADS1_Prospect", all "ADS1_Client" properties have been cloned.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new16.png){:.img.img-responsive.img-center}

Click the Edit button and change the whereclause so that it adresses only Accounts with "Prospect" Record Type:

```sql
WHERE RecordType.Name = 'Prospect'
```

## Manage Analytics

Since we have our "Accounts by Zipcode" data source linked on the USA Zip Codes, it's time to create analytics.
Click on the ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-036.png) icon in the Analytics panel to run the Analytic Wizard.

The Thematic Wizard is a connected application hosted on Heroku. The first you run it, you will be asked to allow this application to connect to your Salesforce data and access to the Analytic Wizard Application:

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-175.png){:.img.img-responsive.img-center}

Here you can defined the type of analytic you want to create:

- **Uniq symbols**

  This type of analysis allows to display the borders of a geographical layers or to display a symbol in its center.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new1.png){:.img.img-responsive.img-center}

- **Range color:**

  This type of analysis enables the repartition of numerical data in several range values. To each range values is associated a unique color.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-180.jpg){:.img.img-responsive.img-center}

  The creation window for this representation is displayed as follows:

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new2.png){:.img.img-responsive.img-center}

  The Field control one can select the field for the analysis.

  The Method will help choose the type of calculation for the analysis. There are three calculation methods available:

  - Quantiles:
    This method divides automatically the values in a manner that each range has an identical number. The boundaries are automatically calculated (and recalculated at every query refresh).
  - Equal Interval:
    This method divides automatically the values in intervals of the same size. The difference between the upper boundary and lower boundary is the same for each interval. Similarly, the boundaries are automatically calculated (and recalculated at every query refresh).
  - Jenks (Natural Breaks method):
    This method divides automatically the value in homogeneous intervals defined by the reading of the bar chart of frequencies of the series. The boundaries are automatically calculated and correspond to significant breaks of the number.
  - Manual:
    This method allows you to manually set the thresholds which set classes apart. Example: Setting apart negative and positive values.

  From the Classes one can set the number of classes for the thematic (by default it is set to 4).

  Inside the table control one can set the color, the type of symbol to be used, and the size of the symbol:

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new7.png){:.img.img-responsive.img-center}

- **Individual color:**
  
  This type of representation allows displaying of data that have a single value through colored symbols.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-183.jpg){:.img.img-responsive.img-center}

  This type of representation is applied only to fields of alphanumeric values (strings), however it is also usable on numeric fields.

  The configuration of the functionality is similar as for the Range Color with the controls having same type of roles.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new3.png){:.img.img-responsive.img-center}

- **Proportional Symbol:**

  This analysis type allows dividing the numeric data in function of their values, in a proportional manner.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-185.jpg){:.img.img-responsive.img-center}

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new4.png){:.img.img-responsive.img-center}

- **Pie charts**

  This representation type allows displaying several query indicators, or several queries using pie charts.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-187.jpg){:.img.img-responsive.img-center}

  This representation type is applied specifically to numeric values fields.

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new5.png){:.img.img-responsive.img-center}

- **Label Thematic**

  Display, as text, the value of an indicator or a geographical label on the map. 

  ![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new6.png){:.img.img-responsive.img-center}

When the configuration of the analysis is done, save it by clicking on the "Save" button. Clicking on the "Cancel" button will cancel all the settings.

After creating analysis, on the Data Source Administration panel, user can see for each datasource, analysis created on it.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new12.png){:.img.img-responsive.img-center}

When an end user defined its visual dataset and add some analytics to it, the map interface shows controls to switch on/off analytics and their legend as shown below.

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/Galigeo4SFDC_Administrati-192.jpg){:.img.img-responsive.img-center}

## Clone an analytic

Let's assume that a data source has been set up on the Accounts with the record Type est “Client” and with zipcodes starting with 59 or 62. Some analytics also have been set up on this object.

```sql
WHERE Postal_Code__c Like '59%' or Postal_Code__c Like '62%'
```

![Configuration Galigeo for Salesforce]({{ site.url }}/assets/img-std-admin/new17.png){:.img.img-responsive.img-center}

We wish to replicate these analytics for Clients whose zipcodes start with 78 or 75. In the data source, let's change the whereclause:

```sql
WHERE Postal_Code__c Like '78%' or Postal_Code__c Like '75%'
```
Once this has been done, new analytics are ready to be used on the maps.