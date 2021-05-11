---
layout: sidebar-lightning
title: Couche de travail
categories: documentation
permalink: /lightning/working-layer-en
lang: en
ref: lightning-workinglayer
---

# Working Layers

A working layer is an extraction of layers (Salesforce objects) visible on the screen.

This extraction can be done from:

- [an area of interest](/lightning/zone-interet)
- [a filtering following a nerby search](/lightning/objects#filtrage-par-recherche--proximit)

{:.table}
| | |
|:-------------:|:-------------:|
|![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extract_from_aoi.png){:.img.img-responsive.img-center}|![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extract_from_nearbysearch.png){:.img.img-responsive.img-center}|
| *Area of Interest* | *Proximity** |

By activating this option, a window offers the user to choose among the layers displayed on the screen the one (s) from which he wishes to extract the objects located inside:
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extract_records.png){:.img.img-responsive.img-center}

Once validated, we obtain a working layer, listing the extracted objects:
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extracted_records.png){:.img.img-responsive.img-center}

For each of these working layers, it is possible:

- to modify the visibility on the map
- to change the color of the markers drawn on the map

From the icon ![Area of Interest]({{ site.url }}/assets/img-std-v2/user/icons/icon_more.png) at the right side, the context menu suggests the following actions:

- Display the detail for the extracted objects
- Add these object to a route
- Remove the working layer

{:.table}
| |
|:-------------:|
|![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/wl_popupmenu.png){:.img.img-responsive.img-center}|
| *Contextual Menu* |

The detail of the extracted objects can be viewed in a table where the different layers are displayed in a tab:
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extracted_records_details.png){:.img.img-responsive.img-center}

By adding these objects to a route, we obtain all the waypoints on the map and in the "Route" menu.
![Working Layer]({{ site.url }}/assets/img-std-v2/user/wl/extracted_records_toroute.png){:.img.img-responsive.img-center}
