---
layout: sidebar
title: Package installation
categories: documentation
permalink: /install-std-en
lang: en
ref: install-std
---

# Package Installation

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/Bko-QyY0tjs" frameborder="0" allowfullscreen></iframe>

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## Start Installation

{:.table.table-bordered}
| ![warning]({{ site.url }}/assets/warning.png)     | **Important** : For an upgrade from any version prior to **1.103**, you need to set the Sharing model to "Private" on the object **"Visual DataSet"** in your **"Organization Wide Default"** |

Go to [the Galigeo AppExchange listing page](https://appexchange.salesforce.com/listingDetail?listingId=a0N3000000B4Nj6EAF).

To start the package installation, click **"Get It Now"** on the right.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-018.jpg){:.img.img-responsive}

## Sign In

Sign in using your Salesforce credentials or log in as a guest.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-021.png){:.img.img-responsive}


If you are not logged in yet to your production organization, you will be forward to the Salesforce login page.


Choosing a Guest account (available for 30 days) is the better way to discover quickly our Galigeo App: a demo is already installed ... and you can go directly to the [Check Installed Packages](#check-installed-packages) paragraph below.

## Installation method

After be logged with your Salesforce credentials, choose if you want to install the application in your Production organization or in a Sandbox system:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-024.png){:.img.img-responsive.img-center}

## Agree to Terms and conditions

It is showing the details about the version of Galigeo App being installed and the account it will be installed on.

Confirm by checking the box **"I have read and agree to the terms and conditions"**, and then click **"Confirm and Install!"**.

The package version might change due to its update.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-027.png){:.img.img-responsive.img-center}

## Security Settings

Select who will access to the application:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-028.png){:.img.img-responsive.img-center}

## Approve Third-Party Access

This package need to access a Third-Party Web Service when a geocoding batch is scheduled.

1. Select the checkbox **"Yes, grant access to these third-party web sites"**
2. Then click **"Continue"**

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-029.png){:.img.img-responsive.img-center}

## Installation Package in progress

Finally, the package is installing:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-030.png){:.img.img-responsive.img-center}

It may take a few minutes to install the package on your organization, the following will be displayed:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-031.png){:.img.img-responsive.img-center}

## Check Installed Packages

Once you received the confirmation email, in order to check if the package is installed, go to: **Setup** / **App Setup** / **Installed Packages**

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-032.png){:.img.img-responsive.img-center}

Click on the “Manage License” link:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-034.png){:.img.img-responsive.img-center}

to add user:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-035.png){:.img.img-responsive.img-center}

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  | Now, as an Administrator of your org., the Galigeo App is visible in the App list (top right) |

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-std-install/Galigeo4SFDC_Installation-036.png){:.img.img-responsive.img-center}

**The "Galigeo Admin" and "Galigeo" tabs are available to configure yours maps (see the “Administration Guide”). If you installed the App with a Guest account, this two tabs are already initialized.**

**[The next chapter]({{ site.url }}/post-install-std-en) is only here if you want to put this app available for the users of your organization.**
