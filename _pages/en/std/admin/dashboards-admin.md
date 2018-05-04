---
layout: sidebar
title: Dashboards configuration
categories: documentation
permalink: /dashboards-admin
lang: en
ref: dashboards-admin
---

# Dashboards configuration

Dashboards are configured from a SOQL query for which we add elements such as graphs, a map and / or the data table.

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## Access

The list of available dashboards is accessible from the "Dashboards" tab of the administration page.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-tab.png){:.img.img-responsive.img-center}

Add a new dashboard by clicking on the "New" button. The user is then redirected to the configuration page.

The configuration page consists of two parts:

- Settings
- Preview

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-configuration.png){:.img.img-responsive.img-center}

### Settings

When setting up a dashboard, the user is asked to enter:

- A name
- The type of object the dashboard is on
- Possibly the field to identify a parent. For example, keeping in mind a diagram of the relationship between accounts and opportunities, it's possible to create a dashboard on opportunities only on selected accounts by choosing "Account ID" in the list of parent relationship fields
- The SOQL request that will be used to retrieve the data, used to feed the various graphs

You can find more information in the Salesforce documentation on how to define a [Salesforce Object Query Language](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/) (SOQL) query.

<div class="alert alert-warning" role="alert">Requests are subject to <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_limits_intro.htm">Salesforce Governors Limits</a>. Be sure to create more selective filters so you do not reach these limits.</div>

### Preview

In the preview section, it's possible to change the parameters of the graphs, their display order or to delete them.

Each component has a set of icons at the top right:

- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_ordre.png) : reorder the component
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_proprietes.png) : change the properties of the component
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_supprimer.png) : delete the component

The data table will still be visible here, but an option allows you to display it or not in the final dashboard.
Note that this preview only returns the first 100 lines.

Below the SoQL query input, there are three buttons:

- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-bouton_ajouter.png) : add a graph to the dashboard
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-bouton_tableau.png) : display or not the data table in the final dashboard
- ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-bouton_actualiser.png) : refresh the data according to the query

## Visualizations

5 types of visualizations are available:

{:.table.table-bordered}
|Visualization|Use |
| ------------- | ------------- |
|Number|Display a simple numerical value |
|Bar chart|Comparison of a data series |
|Donut chart |Contribution of each value in proportion to the whole |
|Line chart |Variation in value over a period |
|Map |Map of the points of the selection |

Apart from the "Map" component which does not require any configuration other than the title, others have parameters of their own.

### Number

It displays a numerical value and is configured by choosing the field to be aggregated (among the numeric type fields) and the aggregation function.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-nombre.png){:.img.img-responsive.img-center}

### Bar chart

This component displays data according to a category defined on the X axis. It's configured by choosing a field for the X axis, an aggregation function and a metric.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-barres.png){:.img.img-responsive.img-center}

### Donut chart

It displays data by category and represented as a sector and sorted in descending order.
It's configured by choosing a field to qualify the sector, an aggregation function and a metric.
It's possible to limit the number of values ​​to be displayed and possibly group the other values ​​in a sector which will be named "Others".

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-anneau.png){:.img.img-responsive.img-center}

### Line chart

This component allows to display the evolution of a metric depending on a time series.
The fields available to define the X axis must be of the type Date or DateTime.
The addition / removal of series is done by simply clicking on the icon next to a metric.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-courbe.png){:.img.img-responsive.img-center}

### Map

This component displays as an image the points selected from the selection tool and for which the dashboard has been refreshed. Only the title is configurable.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-carte.png){:.img.img-responsive.img-center}

A complete configuration example of a dashboard based on Opportunities:

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-opps.png){:.img.img-responsive.img-center}

By clicking on the "Save" button, the user is redirected to the list of available dashboards.

![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-liste.png){:.img.img-responsive.img-center}

By clicking the ![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-std-admin/dashboards-icone_voir.png) icon, it's possible to see the dashboard as it will be visible to the end user.