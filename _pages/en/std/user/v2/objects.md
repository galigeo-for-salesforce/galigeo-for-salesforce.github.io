---
layout: sidebar-lightning
title: Objects
categories: documentation
permalink: /lightning/objects-en
lang: en
ref: lightning-objects
---

# Maps and Layers

When opening the application, the "Layers" menu is automatically opened and presents three tabs:

- Map(s): list the maps saved by the user or which have been shared with him
- Layer(s): list all the mappable objects configured by a Galigeo administrator
- Opened: list all opened layers

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2-en/user/mlayer_tab_maps.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2-en/user/mlayer_tab_layers.png){:.img.img-responsive.img-center}|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2-en/user/mlayer_tab_opened.png){:.img.img-responsive.img-center}|
| *Maps Tab* | *Geographic Objects* | *Opened layers* |

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_map.png){:.img.img-center}|Load a map or a layer. When a map is loaded, everything is cleared and replace by the content of the loaded map. It's still possible to add more layer after |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_share.png){:.img.img-center}|Manage map sharing |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_delete.png){:.img.img-center}|Delete a map |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_settings.png){:.img.img-center}|Go to configuration page|

# Manage Maps

A map is an element made up of layers (or mappable objects).

This tab has two sections

- the list of maps that have been shared by another user with the one connected
- the list of maps of the current user

For all maps, it is possible to load them by clicking on the icon ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_map.png). 

For each of the cards defined by the user, it is possible to:

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_share.png){:.img.img-center}| Manage map sharing with users or groups |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_delete.png){:.img.img-center}| delete a map |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_fav_map.png){:.img.img-center} ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_fav_map_selected.png){:.img.img-center}| Define a map as favorite by clicking on it. A map is identified as favorite when the icon is green. When opening the application, if a favorite map is defined, all its content is loaded automatically. |

## Create a Map

After loading objects, the user has the possibility to save this set as a map by clicking on the icon ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_save.png). 

![New Map]({{ site.url }}/assets/img-std-v2/user/map/new_map_01.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert">Shared maps are only read-only accessible. The user can only load them. He can still use the "Save As" feature to make a copy.</div>

## Share a Map

By clicking on the icon ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_share.png), a window is displayed containing the list of users and groups with whom a sharing was made.
![New Share]({{ site.url }}/assets/img-std-v2-en/user/map/map_share_01.png){:.img.img-responsive.img-center.img-bordered}

To add a sharing, click on the icon ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/icons/icon_add.png) in order to display the window. In it there you can:
- choose a category: users or groups 
- choose from the elements 
- click on the "Save" button

![New Share]({{ site.url }}/assets/img-std-v2-en/user/map/map_share_02.png){:.img.img-responsive.img-center.img-bordered}

Once the addition of users (or groups) is complete, the content is refreshed 

![New Share]({{ site.url }}/assets/img-std-v2-en/user/map/map_share_03.png){:.img.img-responsive.img-center.img-bordered}


# Manage Opened Objects

Each open layer is presented in a section allowing the user to take action:

{:.table.table-bordered}
|![Layer visibility]({{ site.url }}/assets/img-std-v2/user/objects/layer_toggle_viz_switch.png){:.img.img-center}| Manages the layer visibility on the map |
|![Show Filters]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png){:.img.img-center}| Displays the layer filters |
|![Remove layer]({{ site.url }}/assets/img-std-v2/user/objects/layer_remove_icon.png){:.img.img-center}| Removes the layer from the map |
|![Rendering types]({{ site.url }}/assets/img-std-v2/user/objects/layer_viz_type_icons.png){:.img.img-center}| Changes the type of rendering on the map (cluster or markers). By default on load, the rendering type by cluster is active |

{:.table}
| | |
|:-------------:|:-------------:|
|![Cluster rendering]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_viz_cluster.png){:.img.img-responsive.img-center}|![Marker rendering]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_viz_marker.png){:.img.img-responsive.img-center} |
| *Rendering by clusters* | *Rendering by markers* |

<div class="alert alert-warning" role="alert"> <strong>Important :</strong>  Using clusters improves display performance. <br>When changing render from cluster to marker, only 1000 items are displayed on the screen.</div>

## Informations Window

The info-window of a recording is obtained by clicking on a marker and contains:

- a link to the Salesforce presentation page of the recording (by clicking on the name)
- essential information on the object [coming from standard or personalized fields](/infowindow-labels-admin)
- [customized actions](/actions-admin-en)
- standard actions

{:.table}
| | |
|:-------------:|:-------------:|
|![Infowindow and custom actions]({{ site.url }}/assets/img-std-v2-en/user/objects/infowindow_quick_actions.png){:.img.img-responsive.img-center}|![Infowindow and standard actions]({{ site.url }}/assets/img-std-v2-en/user/objects/infowindow_actions.png){:.img.img-responsive.img-center} |
| *Customized Actions* | *Standard Actions* |

## Data Filtering

### Using Preconfigured and Dynamic Filters

Click on the "Filter" icon ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-v2/user/objects/layer_filter_icon.png) in order to display the panels of filter associated to the layer. These filters were defined by the application administrator when the geographical object was configured.

The panel has two parts:

- the preconfigured filters
- the dynamic filters

#### Preconfigured Filters

Thanks to the pre-configured filters, the user can modify the content of his map by retrieving only the records that meet the criteria defined by the filters.

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_filters_panel.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_filters_panel02.png){:.img.img-responsive.img-center} |
| *Filter "Client", "Prospect", and "Ancient client"* | *Filter "Prospect" activated* |

#### Dynamics Filters

Dynamic filters allow you to filter records by keyword in a few steps:

1. enter the text
2. choose a clause
3. visualize the result

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_dynfilter_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_dynfilter_01_result.png){:.img.img-responsive.img-center}|
| *Canditates filter* | *Dynamic filtering applied to the city of "Villeurbanne"* |

## Filtering from the Data Table

For each of the opened layers, the data panel allows:

- the filtering by a name search
- the filtering by column (values list, the number, currency, date/datetime)

The activation of these filter modifies the display of the objects on the map.

<div class="alert alert-info" role="alert">For all the data tables of the Salesforce objects loaded, the first column and the table header are fix.</div>

### Filtering Using Keyword

An enter zone allows the dynamic filtering of the records by their name.

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_dt_filtering_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/layer_dt_filtering_01_name.png){:.img.img-responsive.img-center}|
| *Data Table* | *Fitering by the name containing "cafe"* |

### Columns Filtering

For each of the columns (of type list of values, number, currency, date/datetime), it is possible to define a filter by clicking on the filter icon of the column.

#### List of Values

{:.table}
| | |
|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_picklist_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_picklist_02.png){:.img.img-responsive.img-center}|
| *Values List* | *Fitering on "Client"* |

{:.table}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_picklist_result.png){:.img.img-responsive.img-center}|
| *Result* |

#### Numbers and Currencies

The filtering on fields of type numeric or currency is defined in the same way:

1. Define one or more criteria: by choosing an operator and a value
2. Apply the filter

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_number_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_number_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_number_03.png){:.img.img-responsive.img-center}|
| *Liste des conditions* | *CA supérieur à 1 500 000* | *Liste des conditions* |

{:.table}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_number_result.png){:.img.img-responsive.img-center}|
| *Result* |

#### Dates

The filtering on fields of the type Date or DateTime is performed by choosing an operator and a predefined period.

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_date_01.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_date_02.png){:.img.img-responsive.img-center}|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_date_03.png){:.img.img-responsive.img-center}|
| *Conditions List* | *Date of the last visit on the current month* | *Conditions List* |

{:.table}
| |
|:-------------:|
|![Filtres actifs]({{ site.url }}/assets/img-std-v2-en/user/objects/colfilter_date_result.png){:.img.img-responsive.img-center}|
| *Result* |

<div class="alert alert-info" role="alert">Columns filtering is applied from left to right.<br />If the filters are activated on the columns "CA 2016" and "CA 2017", the result will be obtained by first filtering the data with the conditions defined on the column "CA 2016", and then those defined on the column "CA 2017".</div>

## Nearby Search Filtering

The app offers three ways to filter items by searching nearby:

- from the green marker ![Data Explorer]({{ site.url }}/assets/img-std-v2/user/icons/icon_currentlocation.png) indicating the current location: obtained either by user automatic localization, or by address search
- from one of the standard actions available in the info-window
- from the right click contextual menu

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Recherche à proximité]({{ site.url }}/assets/img-std-v2-en/user/nearbysearch/ns_currentlocation.png){:.img.img-responsive.img-center}|![Recherche à proximité]({{ site.url }}/assets/img-std-v2-en/user/nearbysearch/ns_infowindow.png){:.img.img-responsive.img-center}|![Recherche à proximité]({{ site.url }}/assets/img-std-v2-en/user/nearbysearch/ns_rightclick.png){:.img.img-responsive.img-center}|
| *Current Localization* | *Info-Window* | *Right Click* |

This opens a window inviting the user to enter the distance and the unit:
![Nearby popup]({{ site.url }}/assets/img-std-v2-en/user/nearbysearch/ns_popup.png){:.img.img-responsive.img-center}

Once validated, all the layers are filtered both on the map and in the data table.

To remove the filtering, all you have to do is click on the circle to bring up a contextual menu and click on "Cancel Search".
