---
layout: sidebar-starter
title: Package installation
categories: starter
permalink: /install-geocoding
lang: en
ref: install-geocoding
---

# Package installation

The geocoding app is, like any typical Salesforce application, installed from a URL, which can be launched in the browser or directly from the [Salesforce AppExchange](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N30000000q66zEAA).

For installation steps, refer to the [Salesforce documentation](https://developer.salesforce.com/docs/atlas.en-us.appExchangeInstallGuide.meta/appExchangeInstallGuide/appexchange_install_installation.htm).

## Checking the installed package

To verify that the installation has been successfully completed, go to **Setup > Installed Packages**.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-str-install/install_geocoding-package.png){:.img.img-responsive.img-center.img-bordered}

## Configuration of the components

The geocoding package contains three main Visualforce components which we can:
- add to the [page layout of an object](#integration-into-the-page-layout-of-an-account)
- use as a [Salesforce mobile application](/config-mobile-app#mobile-component) (formerly known as Salesforce1)
- use as a [quick action in the page layout of an object on mobile](/config-mobile-app#salesforce1-quick-action-configuration)

They can be used for standard and custom Salesforce objects. In the following articles, we will configure them for the object "Account".