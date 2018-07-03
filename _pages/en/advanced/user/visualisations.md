---
layout: sidebar-advanced
title: Visualization Modes
categories: advanced
permalink: /visualisations-adv-en
lang: en
ref: visualisations-adv
---

# Visualization Modes

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## Map

The territories are represented on the map in the color assigned to them.

## Tables/Graphics

At the left hand side of the interface, the territories are represented in a tabular or a graphical manner. A switch allows the toggling of the views.

### Tabular view

Each line corresponds to a territory. The first line of the table corresponds always, even for the new projects, to the selection. The selection is a "virtual" territory. It is necessary for the creation and modification of territories. More details about the selection will be given in the chapter about the territory design.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-viz_map.png){:.img.img-responsive.img-center}

This table has the following columns:

- Territory: it has the name, the color as well as the number of the sectors composing the territory. Different buttons, described below, are also available.
- Stakeholder: it is the stakeholder assigned to the territory, if there is one.
- The following columns correspond to the available indicators. An indicator is a numeric field defined at the sectors level. In this table the indicators are aggregated for each territory. In the column headers, a button allows to change the aggregate function. The following functions are available: average, sum, minimum, maximum, number. By default, the sum is selected.

For each territory there are several actions available in the column "Territory":

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-020.png): This button toggles the visibility of the territory on the map.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-021.png): This button makes a zoom on the territory.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-022.jpg): This button deletes a territory.

By clicking on the color assigned to the territory, a window will open allowing the selection of the color for the territory.

A double click on the territory name allows the renaming of the territory.

Also, in the "Stakeholder" column, it is possible to assign a stakeholder to a territory. The arrow allows the selection of a stakeholder from the list of ones available. These stakeholders have been defined by the Territory Management administrator. A search bar allows the filtering of the stakeholders by name. The red cross retracts the assignment of a stakeholder to a territory.

### Graphics

This view displays for each territory the indicators aggregation in the form of a bar chart. The aggregation function corresponds to that selected in the table view.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-viz_graphics.png){:.img.img-responsive.img-center}

By default, all the indicators are simultaneously displayed. The legend at the right hand side of the graphic allows the selection of the indicators to display.

When the mouse hovers over one of the bars from the chart, a tooltip is displayed showing the indicator, the territory and the value to which corresponds the bar

On the X axis, that corresponds to the value of the indicators, the minimum and the maximum correspond to the minimum and maximum of all the indicators on all the territories. Accordingly, if indicators are displayed which unit is different, or if there are indicators that have very different values, a problem of scale can appear.

## Interaction

The cartographic views, tabular and graphic, of the territories are connected. 

Regardless of the view, if it is clicked on a territory, this one will be displayed in the 3 views: highlighted with a yellow border on the map, with a gray line background on the table, darker bar on the chart.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-territory_selected_table.png){:.img.img-responsive.img-center}

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-territory_selected_graphics.png){:.img.img-responsive.img-center}

## Territories' details

As one selects a territory, the details of the sectors composing it are displayed in two different manners:

- On the map, the geometries of the sectors are visible
- On the right hand side of the interface, a table displaying the attribute details of different sectors. We find the sector label, the different indicator values, and all other non-numerical fields defined.

These two displaying manners are also connected. If one clicks on a sector on the map, that is highlighted on the table by a flashing frame, and if ones clicks on a sector on the table this will be highlighted on the map by a flashing sector.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-sector_selected.png){:.img.img-responsive.img-center}

## Display options

### Labels

	The names of territories can be displayed on the map using the following button ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-023.png).

### Filters

It is possible to filter visible territories in the application. There are two types of filters:

- Text filter: It filters after the name of the stakeholder assigned to the territory. The filter is available in the toolbar. ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-024.png) It keeps only the territories which name contains the string entered in the text field.

- Extent filter. It is becomes active by the user of the following button ![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-user/Galigeo4SFDC_-_UserGuide_-025.png) available in the toolbar. It filters the territories according to the actual extent of the map at the moment of its activation. Thus will be kept only the territories visible on the screen.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-territories_display_options.png){:.img.img-responsive.img-center}

## Points Details

If at the creation of the project the user selected a layer of points, it is then displayed on the map as “clustered”, i.e. the points that are close from the geographical point of view are regrouped in order not to overload the map.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-adv-user/tm-clusters.png){:.img.img-responsive.img-center}

Also, at the right hand side of the interface, there is a switch that allows the toggling from sectors to the point details.

The interface in mode “Point” is identical with the mode “Sector”, and there are only the following 2 differences:

- The table at the right: it displays the details of points that are assigned to a territory
- The table at the left: it displays the aggregation of attributes of points assigned to every territory

The assigning Point-Territory is done automatically. A point is assigned to a territory if its owner is also a stakeholder of the territory. If a stakeholder is assigned to more territories, then the points are assigned to the first found corresponding territory.

On the map, the points take the color of the territory to which they are assigned. If they are not assigned to any territory, then they are grayed out.