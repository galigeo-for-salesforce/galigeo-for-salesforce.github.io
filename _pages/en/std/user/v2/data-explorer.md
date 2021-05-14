---
layout: sidebar-lightning
title: Data Explorer
categories: documentation
permalink: /lightning/data-explorer-en
lang: en
ref: lightning-dataexplorer
---

# Data Exploration

<div class="alert alert-warning" role="alert"> <strong>Important :</strong> This feature only works for french companies.</div>

Click on the icon ![Data Explorer]({{ site.url }}/assets/img-std-v2/user/icons/icon_explorer.png) in the toolbar in order to display the data explorer panel.

## SIRENE Database

- Enter the keyword and click on ENTER in order to launch a search
- A list of establishments is displayed below and also on the map

![Data Explorer]({{ site.url }}/assets/img-std-v2-en/user/dataexplorer/mainpanel.png){:.img.img-responsive.img-center.img-bordered}

Click on an establishment on the list to display its information sheet (this can also be obtained by clicking directly on a marker on the map)

![Data Explorer]({{ site.url }}/assets/img-std-v2-en/user/dataexplorer/sirene_infowindow.png){:.img.img-responsive.img-center.img-bordered}

### CRM Enrichment

If the user is in a Salesforce Lightning execution context, the information sheet contains actions allowing you to create a new lead, a new account or a new contact from the information in the SIRENE database (name, address, contact information).

{:.table}
| | | |
|:-------------:|:-------------:|:-------------:|
|![Data Explorer]({{ site.url }}/assets/img-std-v2-en/user/dataexplorer/sirene_newlead.png){:.img.img-responsive.img-center} |![Data Explorer]({{ site.url }}/assets/img-std-v2-en/user/dataexplorer/sirene_newaccount.png){:.img.img-responsive.img-center} |![Data Explorer]({{ site.url }}/assets/img-std-v2/user/dataexplorer/sirene_newcontact.png){:.img.img-responsive.img-center}
| *new Lead* | *New Account* | *New Contact* |

<div class="alert alert-warning" role="alert"> <strong>Important :</strong> The creation of these objects are delegated to Salesforce and the creation page layout is the one defined in Salesforce. Galigeo only sent the needed informations.</div>
