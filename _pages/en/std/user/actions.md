---
layout: sidebar
title: Actions
categories: documentation
permalink: /actions-en
lang: en
ref: actions
---

# Actions

Actions are Salesforce or external tasks triggered from a point on the map. There are two types:

1. [Standard](#standard-actions), defined by default
2. [Custom](#custom-actions), that fit into any work process

## Standard Actions

They are accessible from the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-icon_std_actions.png) icon of the information window:

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std.png){:.img.img-responsive.img-center}

There are currently 4 of them:

{:.table.table-bordered}
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_cal.png){:.img.img-center}|Create an **event** related to the object |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_rel_lists.png){:.img.img-center}|See the **lists related** to the object |
|![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-action_std_itinerary.png){:.img.img-center}| **Add the point to the itinerary**: it will be visible in the list of points to visit in the Directions tab |
| ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-std_radius.png){:.img.img-center} | Find **points within a radius** of the object |

## Custom Actions

Actions can be associated with a type of map object and directly accessible via the information window.

These Actions can be internal Salesforce links, external, or custom Visualforce pages. They are displayed either in a new window or directly on the map in a modal window.

<div class="alert alert-warning" role="alert"> <strong>Warning :</strong> Salesforce internal links, such as task or event creation links, cannot be displayed in a modal window but in a new window. This is a Salesforce restriction.</div>

A list of available Actions:
![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-custom_info_window.png){:.img.img-responsive.img-center}

Custom Visualforce page of a Twitter feed:
![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/actions-custom_twitter.png){:.img.img-responsive.img-center}

See the [Custom Actions configuration](/actions-admin-en) page.