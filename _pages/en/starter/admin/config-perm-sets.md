---
layout: sidebar-starter
title: Permission sets configuration
categories: starter
permalink: /config-perm-sets
lang: en
ref: config-perm-sets
---

# Permission sets configuration

In the previous articles, we have implemented various elements including three Visualforce pages:
- GeocodeAccount
- GeocodeAccountLocationSF1
- GeocodeAccountQuickActionSF1

To avoid an error message stating that the user does not have sufficient rights to view the different components, we need to set up a set of permissions.

1.	In **Setup > Manage Users > Permissions Sets**, click on the "New" button
2.	In the label input, enter the value "Geocode Permissions set".
3.	Click on the "Save" button.
4.	In the "Application" section, click on "Acces Visualforce page"
5.	Click on the "Edit" button
6.	Enable Visualforce pages according to your needs:
	- For the classic version: select the "GeocodePDV" page
	- For the mobile version: select the pages "GeocodeAccountLocationSF1" and "GeocodeAccountQuickActionSF1"
7.	Click on the "Save" button

Now that the permission set is configured, it must be assigned to the appropriate users.

1.	In **Setup > Manage Users > Users**, click on a user
2.	In the section "Permission Set Assignments", click on the button "Edit Assignments"
3.	In the list, activate the set "Geocode Permissions set"
4.	Click on the "Save" button.
