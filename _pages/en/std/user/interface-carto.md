---
layout: sidebar
title: Map User Interface
categories: documentation
permalink: /interface-en
lang: en
ref: interface-carto
---

# Map User Interface

## General presentation

The map viewer offers a powerful and a great user experience to visualize and analyze your data:

- Visualize and manage your Salesforce object data on map
- Plan an event related to a record
- Navigate and explore your data analysis
- Select area or point of interest and calculate new metrics and statistics

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-026.jpg){:.img.img-responsive.img-center}

## Toolbar

{:.table}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/interface-navigation_closed.png)|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/interface-navigation_open.png)| The toolbar contains the links to all functionalities available in the application. <br><br>At the opening, the tool is collapsed (see picture on the left). When user moves his mouse over it, the toolbar expands and collapses on mouse out. <br>To stick the toolbar opened, user only needs to click on the toolbar icon. | 

## Map Visualization

The map manages the data cluster, depending on the map scale. The smaller the map scale, the more split are the clusters into single markers. Images below show the same area at two different map scale.

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/cluster1.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/cluster2.png){:.img.img-responsive.img-center}|
| *Clustered markers* | *Split markers* |

Galigeo for Salesforce offers the option to de-activate clusters in order to visualize all markers individually:

{:.table}
|   |    |
|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-005.png){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-007.png){:.img.img-responsive.img-center}|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-006.jpg){:.img.img-responsive.img-center} | ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo_for_SFDC_release_-008.jpg){:.img.img-responsive.img-center}|
| *Map with clusters* | *Map without cluster* |

{:.table.table-bordered}
| ![warning]({{ site.url }}/assets/warning.png)     | Using clusters improves the application performance.<br><br> When displaying more than 1000 markers, we strongly advice to stick with the cluster mode. |

## Information window

The information window has:
- A link to the Salesforce page of the object
- Main info about the object [from standard or custom fields](/infowindow-labels-admin)
- [Custom Actions](/actions-admin-en)
- [Standard Actions](/actions-en#standard-actions)
- A dropdown list of [dashboards](/dashboards#from-an-object)

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/interface_carto-infowindow.png){:.img.img-responsive.img-center}