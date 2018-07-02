---
layout: sidebar-advanced
title: Register the app
categories: documentation
permalink: /register-en
lang: en
ref: enregistrement
---

## Introduction

The administration of the Galigeo for Salesforce Advanced Edition app is done from the « Galigeo Admin (advanced) » tab.

The page contains two tabs:

1. Organization: allows the admin the to register/unregister its org to the Territory Management Designer App (TM Designer App) hosted on Heroku and declare users with associated roles to the TM Designer App.
2. Sectors: from here, the admin can manage (Create/refresh or delete) the base sector used in the TM Designer App populated with Salesforce metrics.

## Register your organization

The first thing you need to do is to register your organization in the Territory Management App database. To do this, select the "Galigeo" application and click on the "Galigeo Admin (advanced)" tab and activate the tab "Organization" if it is not the case.

You should have the following screen with the information that you organization is not yet registered.

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-016.png){:.img.img-responsive.img-center}

Click the "Register org" button. Once everything has been set up, the screen is refreshed and you may see the following screenshot:

![Galigeo for Salesforce Installation]({{ site.url }}/assets/img-adv-admin/Galigeo4SFDC_-_Administra-019.png){:.img.img-responsive.img-center}

This page is divided in two section:

- Informations about your organization with the of licenses used by type. By default, when an organization is registered, there are 2 Designer licenses and 2 stakeholder licenses. A Designer is either a TM_Admin role or a TM_Owner role. A Stakeholder has the role TM_Stakeholder.
- The list of the user allow to use the application.