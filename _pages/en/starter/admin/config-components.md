---
layout: sidebar-starter
title: Configuration of the geocoding module components
categories: starter
permalink: /config-components
lang: en
ref: config-components
---

# Configuration of the geocoding module components

The geocoding package contains mainly three generic Visualforce components. They can be integrated in Visualforce pages, in order to be added to:
- The page layout of an object
- As a Salesforce mobile application (formerly Salesforce1)
- Or be used as a [quick action](https://developer.salesforce.com/docs/atlas.en-us.salesforce1.meta/salesforce1/actions_about.htm) in the page layout of an object on mobile

Components can be configured for Salesforce standard and custom objects.

In this article, we will configure the various components for the Salesforce Standard object "Account", with the following subset of fields:

{:.table.table-bordered}
| Label | API name | Type | Information |
|:--------------------|:------|
| Address                  | BillingStreet             | Text           | Address |
| Postal Code              | BillingPostalCode         | Text           | Address |
| City                     | BillingCity               | Text           | Address |
| State                    | BillingState              | Text           | Address |
| Country                  | BillingCountry            | Text           | Address |
| Street (Normalized)      | Normalized_Street__c      | Text           | Normalized address |
| Postal Code (Normalized) | Normalized_Postal_Code__c | Text           | Normalized address |
| City (Normalized)        | Normalized_City__c        | Text           | Normalized address |
| State (Normalized)       | Normalized_State__c       | Text           | Normalized address |
| Country (Normalized)     | Normalized_Country__c     | Text           | Normalized address |
| geoloc                   | geoloc__c                 | Geolocation    | latitude/longitude |

The <code>geoloc__c</code> field is of the "Geolocation" type configured with 8 digits for the decimals.

## Configuration of the geocoding component

We will now configure the component to integrate it on the layout page of an object of the Account type in a section named "**Geocoding**".

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-page_presentation.png){:.img.img-responsive.img-center.img-bordered}

To do this, we use the Visualforce **GeocodeComponent** component, which has the following attributes:

{:.table.table-bordered}
| Attributes      | Required | Information |
|:--------------------|:------|
| recId          | Yes    | Salesforce object id | Address attributes |
| recType        | Yes    | Salesforce object type | Address attributes |
| street         | Yes    | Address field where the street is | Address attributes |
| city           | Yes    | Address field where the city is | Address attributes |
| postalCode     | Yes    | Address field where the postal code is | Address attributes |
| state          | Yes    | Address field where the state (or region) is | Address attributes |
| country        | Yes    | Address field where the country is | Address attributes |
| geoLoc         | Yes    | Field containing the coordinates ||
| normStreet     |        | Field where the street will be saved | Normalized address attributes |
| normCity       |        | Field where the city will be saved | Normalized address attributes |
| normPostalCode |        | Field where the postal code will be saved | Normalized address attributes |
| normState      |        | Field where the state (or region) will be saved | Normalized address attributes |
| normCountry    |        | Field where the country will be saved | Normalized address attributes |
| displayFields  |        | List of fields to display in the infowindow | Visualization |
| maxResults     |        | Maximum number of results when searching by proximity. The value is 10 by default. | Visualization |
| nearbyDistance |        | Default distance of proximity search. The value is 10 by default. | Visualization |

It is mandatory to enter attributes to define an address even with an empty string. However, it is necessary that the value of the "street" attribute matches at least one existing field of the object. If not an error message will inform the user to check the configuration of the component.
The values of the object fields corresponding to these attributes are used to perform the geocoding.

The attributes of the nomalized address are used to save the address coming from the geocoder. It is of course possible that the values of these attributes are the same as those used for the address.

The list of fields of the "displayFields" attribute is used to display the values in the infowindow when the user clicks on a map marker.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-fiche_info_obj_courant.png){:.img.img-responsive.img-center}

<p class="text-center small">Infowindow of the current object</p>

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-fiche_info_autre_obj.png){:.img.img-responsive.img-center}

<p class="text-center small">Infowindow of another object</p>

## Creating the Visualforce page

We will create a Visualforce page which integrates the **GeocodeComponent** component.

1.	In **Setup > Develop > Pages**
2.	Click on the "New" button to create a new page
3. In the label input, enter the value "**GeocodePDV**"
4. In the page code, put the following:

    ```
    <apex:page showHeader="false" sidebar="false" standardController="Account" docType="html-5.0">
        <ggo:GeocodeComponent recId="{!Account.id}" recType="Account" 
            street="BillingStreet" city="BillingCity" 
            postalCode="BillingPostalCode" state="BillingState" 
            country="BillingCountry" 
            geoLoc=" GeoLoc__c"  displayfields="Potentiel_Total__c,Potentiel__c" 
            normStreet="Normalized_Street__c" normCity="Normalized_City__c" 
            normPostalCode="Normalized_Postal_Code__c" normState="Normalized_State__c" 
            normCountry="Normalized_Country__c"  
            maxResults="50" nearbyDistance="0.4"/>
    </apex:page>
    ```

    In order for the page to be integrated into the page layout of an object of the Account type, it is necessary that the standard controller of this page is "**Account **".

     It is important to enter the fields API names and not their labels.

5.	Click on the "Save" button to save the page.

## Integration into the page layout of an Account

1.	In **Setup > Customize > Accounts > Page layouts**
2.	In the "Page layouts" section, click on "Edit" in front of the desired layout.

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-config_pres_page.png){:.img.img-responsive.img-center.img-bordered}

3.	In the layout editing page, click on "**Visualforce Pages**", insert a section that we will name "**Geocoding**", displayed on 1 column.
Insert a "**GeocodePDV**" page in this new section.

    ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_components-page_vf.png){:.img.img-responsive.img-center.img-bordered}

    For a nicer display of the component, change its size and give it a height of 450px.

4.	Click on the "**Save**" button to save the modifications of the page layout of objects of the Account type.