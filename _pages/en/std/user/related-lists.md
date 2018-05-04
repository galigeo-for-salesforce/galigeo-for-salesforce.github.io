---
layout: sidebar
title: Related lists
categories: documentation
permalink: /related-lists
lang: en
ref: related-lists
---

# Related lists

Related lists allow you to see objects related to a point and their data, and display them on the map if they are geolocated.

The ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_rel_lists-sm.png) icon, one of the [Actions in the information window](/actions-en#standard-actions) of an object, allow to get the lists related to it. The result is displayed in a table at the bottom of the map and the different lists are grouped by tab.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-tableau.png){:.img.img-responsive.img-center}

In this table, we find:

## List views

At the top left, a dropdown menu with the predefined [list views](https://help.salesforce.com/articleView?id=listviews_parent.htm&type=0) allows you to refresh the data table below.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-vues.png){:.img.img-responsive.img-center}
Views on a related list

These are the same views available in the Salesforce tab.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-vues_sf.png){:.img.img-responsive.img-center}
Views defined for Opportunities

Using these views for an object has multiple benefits:

- Use of available lists for a given user
- The fields displayed in the table are the same as those in the view
- No additional configuration

Refer to the [Admin documentation](/related-lists-admin/#list-views) if an error message is displayed.

## Visualization on the map

At the top right, if the objects in the list have been set as map objects, a checkbox allows to display them on the map (if all the info necessary for geolocation is there).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/listes_associees-visualisation_carte.png){:.img.img-responsive.img-center}

## Dashboards

If dashboards have been previously defined on this type of object, they are displayed in a dropdown list. They are updated according to the result of the selected view.