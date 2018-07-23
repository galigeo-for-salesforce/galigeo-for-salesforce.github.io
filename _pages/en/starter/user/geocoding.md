---
layout: sidebar-starter
title: Geocoding
categories: starter
permalink: /geocoding
lang: en
ref: geocoding
---

# Geocoding

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## Geocoding from an address

From the infowindow of a POS, the user can start geocoding by clicking on the icon ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-icone.png) then on the "Geocode" button. The component tries to locate the object from the existing address.

Three cases arise:
1. The geocoding cannot find the address: the user is asked to correct the information
2. The geocoding finds an address: the map is automatically positioned on the found address and the fields of the normalized address are filled
3. Several addresses are found: they are displayed in a list of candidate addresses to let the user choose the one that suits him.

<p class="text-center">
<img src="/assets/img-str-user/geocodage-adresse.png" class="img img-bordered">
<img src="/assets/img-str-user/geocodage-adresse2.png" class="img img-bordered">
</p>

When a candidate address is chosen by the user, a marker is added to the map and the map is centered on that position. The values of the normalized address are then automatically filled in.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse3.png){:.img.img-responsive.img-center.img-bordered}

A text input allows the user to search for an address. If several addresses are candidates, they are displayed in a list to allow the user to choose the one that suits him.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse4.png){:.img.img-responsive.img-center.img-bordered}

The user can correct the position at any time by moving the marker on the map. A reverse geocoding then makes it possible to obtain the normalized address and thus to recover missing values (in this example, the street number is missing).

As before, once the address is chosen, the map is positioned at the coordinates of the address and the fields of the normalized address are filled.

## Geocoding from the current position

Click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-position_courante_icone.png) icon to use the user's current position (using GPS if from a mobile device) to find the address and automatically fill in the fields of the normalized address when they are available.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-position_courante.png){:.img.img-responsive.img-center.img-bordered}

The current position of the user is represented by a small blue circle. The user can refine the location by moving the marker on the map.

## Saving information

Depending on the rights he has on the Salesforce object and its fields, the user can choose to save the normalized address by checking the "Save the normalized address" box.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse_norm_options.png){:.img.img-responsive.img-center.img-bordered}

<div class="alert alert-info" role="alert"> <strong>Note :</strong> This option is only active if the user has write and/or update rights on the fields of the normalized address and on the location field set in the component. If you want to access this option, please contact your Salesforce administrator.</div>

By clicking on the "**Save**" button the user validates the **POS** position. Geographic coordinates (latitude and longitude) are automatically taken into account. Only the choice to save the normalized address is left to the discretion of the user.

Once the information has been saved, the user can view the coordinates and the normalized address (in case it has been saved) by clicking on the "Location" menu.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-adresse_norm.png){:.img.img-responsive.img-center.img-bordered}

## Manual position change

When a user is in the layout page of a **POS** already located, the component uses the previously saved coordinates to center the map. It is possible to change the position of the **POS** by clicking on the "Geocoding" menu to display the interface and click on the "**Correct**" button.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-correction_position.png){:.img.img-responsive.img-center.img-bordered}

In order to correct the position of the POS, the user can:
- Move the marker on the map. The normalized address information is then updated
- Manually enter an address as described previously
- Use his current position by clicking on the button

For each of these actions, the normalized address information is updated.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-correction_position2.png){:.img.img-responsive.img-center.img-bordered}

## Nearby search

When a user is in the layout page of a **POS** and a current position is defined (either because the POS is already located, after an address search or by the user location), it is possible to search for POS from a specific distance.
The user accesses the nearby search interface by clicking on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_icone.png) to display the interface.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite.png){:.img.img-responsive.img-center.img-bordered}

The interface is composed of:
- An input for the search radius. A default value has been set.
- The distance unit shown as a list
- Two buttons:
     - ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_icone_recherche.png) Performs the search with the entered parameters
     - ![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_icone_annule_recherche.png) Cancels the search: empties the list of nearby items and removes them from the map

The result of neighbors search is displayed in a list and on the map. The user is informed of the number of elements in the neighborhood. A limit of the maximum number of elements to be returned in the result is set in the component.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_resultat_recherche.png){:.img.img-responsive.img-center.img-bordered}

The user can visualize and look for info on a neighbourg by clicking in a list or on the map. The user is informed of the number of elements in the neighbourhood. A limit of the maximum number of elements to be returned in the result is set in the component.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-str-user/geocodage-proximite_resultat_recherche2.png){:.img.img-responsive.img-center.img-bordered}

<div class="alert alert-info" role="alert"> <strong>Note :</strong> The information displayed in the infowidow has been set by your Salesforce administrator.<br>
The only distance units supported by Salesforce are Kilometers (km) and Miles (mi).
</div>
