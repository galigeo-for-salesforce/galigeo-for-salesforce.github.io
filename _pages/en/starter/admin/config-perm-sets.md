---
layout: sidebar-starter
title: Permission sets configuration
categories: starter
permalink: /config-perm-sets
lang: en
ref: config-perm-sets
---

# Permission sets configuration

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/ZzB3Q2XV9xA" frameborder="0" allowfullscreen></iframe>
<br/>

In the previous articles, we have implemented various elements including three Visualforce pages:
- GeocodeAccount
- GeocodeAccountLocationSF1
- GeocodeAccountQuickActionSF1

To avoid an error message stating that the user does not have sufficient rights to view the different components, we need to set up a set of permissions.

1.	Go to **Setup > Users > Permissions Sets**, click on the "New" button
2.	In the label input, enter the value "Geocode Permissions set".
3.	Click on the "Save" button.

	![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_perm_sets-create.png){:.img.img-responsive.img-center.img-bordered}

4.	In the "Application" section, click on "Access Visualforce page"
5.	Click on the "Edit" button
6.	Enable Visualforce pages according to your needs:
	- For the desktop version: select the "GeocodePDV" page
	- For the mobile version: select the pages "GeocodeAccountLocationSF1" and "GeocodeAccountQuickActionSF1"
7.	Click on the "Save" button

	![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_perm_sets-vf_page_access.png){:.img.img-responsive.img-center.img-bordered}

Now that the permission set is configured, it must be assigned to the appropriate users.

1.	In **Setup > Users**, click on a user
2.	In the section "Permission Set Assignments", click on the button "Edit Assignments"
3.	In the list, activate the set "Geocode Permissions set"
4.	Click on the "Save" button.

	![Galigeo for Salesforce Admin]({{ site.url }}/assets/img-str-admin/config_perm_sets-users.png){:.img.img-responsive.img-center.img-bordered}