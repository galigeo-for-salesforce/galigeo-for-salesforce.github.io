---
layout: sidebar
title: Dashboards
categories: documentation
permalink: /dashboards
lang: en
ref: dashboards
---

# Dashboards

Dashboards allow sales people and managers to view key information from Salesforce object data.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-overview.jpg){:.img.img-responsive.img-center}

They are accessible from:

- A geographical selection
- An object on the map
- Lists related to an object

## From a geographical selection

By selecting objects using the selection tool, dashboards take them into account to update the data used.

For example, a selection of accounts gives access to a dashboard on their opportunities.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-liste_dispos.png){:.img.img-responsive.img-center}
List of available dashboards

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-suite_selection.png){:.img.img-responsive.img-center}
Dashboard based on selected objects

## From an object

Dashboards can also be accessed from the information window of an object on the map.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-fiche_info.png){:.img.img-responsive.img-center}

## From lists related to an object

The opportunities-based dashboard in the previous example is available from the Opportunities tab of the lists related to an account.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-listes_associees.png){:.img.img-responsive.img-center}

The user then gets a dashboard whose data comes from the opportunities in this list.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/dashboards-opps.png){:.img.img-responsive.img-center}

<div class="alert alert-info" role="alert">In order to avoid reaching the URL length limits supported by browsers and thus sending inconsistent data to Salesforce, only the first 100 items of the related list or selection are taken into account.</div>

See the article on [creating dashboards](/dashboards-admin) for more info on visualizations.