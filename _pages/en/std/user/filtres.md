---
layout: sidebar
title: Filters and Actions
categories: documentation
permalink: /filters-en
lang: en
ref: filtres
---

# Filters and Actions

The tools on the top left allow to manage data by: 

1. Filtering them according to predefined filters 
2. Searching for an object on the map

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/IrB0PrFctS0" frameborder="0" allowfullscreen></iframe>

## Filter data

### With predefined filters

Click on the "Filters" ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-035.png) icon in the toolbar to display the filters panel on the left. Those filters are defined by the application administrator when he sets the Map object up.

By activating the "Clients" filter, the user change the data visualization and see only the objects that satisfy the filter criterion. Markers for those objects are drawn using the symbology associated to the active filter.

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/filter1.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/filter2.png){:.img.img-responsive.img-center}|
| *"Type" filter activated* | *"Client" filter activated* |

### With dynamic filters

Dynamic filters allow you to filter Salesforce objects on the map with a simple keyword.

Using them is simple:

- Enter a keyword
- Select a suggestion
- Your map is filtered!

{:.table}
|   |    |     |
|:-------------:|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/dfilter1.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/dfilter2.png){:.img.img-responsive.img-center}| ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/dfilter3.png){:.img.img-responsive.img-center}|
|*Search field*|*Enter a keyword and select a suggestion*|*Number of displayed objects went down*|

## Searching within records


Click on the records ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-038.png) icon in the toolbar to display the records panel on the left.

The search allows the user to search for a record within those showed on the map.
It presents the total number of records displayed and how many matched the searched text (only first 100 ones are displayed in this list).
By entering a text in the input field and hitting "Enter" on the keyboard, the list is refreshed with the targets having the name containing the entered text. It also displays how many targets are matching.

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/filter4.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/filter5.png){:.img.img-responsive.img-center}|
| *List is not filtered* | *Filtered list with keyword " the "* |

Under the search input text field, there two checkboxes:

- Filter on extent: allows to filter the list with only the records visible in the map view

- Display labels: if the administrator configure the map object to display some fields as
label on the map, this option becomes available. When user activates it, a label window with the fields and its value is displayed closed to the marker on the map. Labels are displayed only if the marker is not within a cluster.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-043.jpg){:.img.img-responsive.img-center}

By clicking on record in the list, the map is centered on the marker and an information window is opened. Its contents is defined by the administrator when he set up the map object.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-044.jpg){:.img.img-responsive.img-center}

In the information, by default the name of the record is displayed in green. A click on it will navigate to the record page layout.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-045.jpg){:.img.img-responsive.img-center}

## Actions on records

For each record in the list and in its information window when it is opened, some actions are available by clicking on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-056.png) icon:

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-047.png) Create an event related to the record

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-057.png) Add the record to the list of points to plan a route

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-049.png) Search around the record with a given radius
