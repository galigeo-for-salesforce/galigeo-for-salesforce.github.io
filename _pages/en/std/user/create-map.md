---
layout: sidebar
title: Create a map
categories: documentation
permalink: /create-map-en
lang: en
ref: create-map
---

# Create a Map

The main entry point for an end user is the Galigeo Tab.
In this tab, a user manage (create/edit/delete) his owned map(s).

## What is a Map?

A Map is a set of Map Objects and analytics defined by the application administrator. The user can choose between those objects to build his own map and can see them.

## Creating a Map

When running the app for the first time, the content of the Galigeo tab is composed of a section with an empty list of maps.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create1.png){:.img.img-responsive.img-center}

Click on the **"New"** button to go to the Visual Dataset creation page.

The creation page is divided in three parts:

1. Basic information section: user is invited to give a name to its Map and select if he
wants to see all of the records or only those for whom he is the owner.

	The "Use Full Calendar" option allows to the user to manager events with a week view of the calendar. This feature will be explained further in [Visit planning](/plan-en).

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create2.png){:.img.img-responsive.img-center}

2. Linked Map Objects list section: user selects from the map objects list what he wants to add to the current Visual Dataset

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create3.png){:.img.img-responsive.img-center}

3. Linked analytics section: user selects from the list of analytics defined by the application administrator what he want to add to the current Visual Dataset

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create4.png){:.img.img-responsive.img-center}

	Available analytics are categorized. A quick find input field allows to filter the list of analytics for an easier lookup.

For both Map Object section and Analytics section, the selection is as following:

1. Select a list of object user wants to add

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create5.png){:.img.img-responsive.img-center}

2. Click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-019.png) icon

3. Result

	![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create6.png){:.img.img-responsive.img-center}

Removing objects is following the same workflow. Select objects on the right part and then click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-021.png) icon

Once the user has selected his objects, click on the "Save" button.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create7.png){:.img.img-responsive.img-center}

Back to the Visual Dataset page, the newly created one is now available in the table with the following columns:

1. Actions :
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-023.png) : click on it to edit the Visual Dataset
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/new2.png) : Share it
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-024.png) : click on it to delete it.
	- ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-025.png) : Go to the map
2. Map Objects: The list of the map objects linked to the Visual Dataset
3. Analytics: The list of the analytics linked to the Map
4. Owner: see the owner's name

## Share a map

The first page in the Galigeo tab displays the maps you have access to in 2 sections:

- Maps shared with me
- My maps

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create8.png){:.img.img-responsive.img-center}

You'll find below the steps to complete in order to share a map with one or more users:

### ![feet]({{ site.url }}/assets/foot.png) Step 1: Click the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/new2.png) icon

On the share screen, click the "Add" button.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create9.png){:.img.img-responsive.img-center}

### ![feet]({{ site.url }}/assets/foot.png) Step 2: Select the users you want to share with

You can add users:

- By role: allows to add several users at a time. Roles correspond to what has been defined in the Salesforce role hierarchy.
- By user: Select one or several names of users who should be able to access the map

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create10.png){:.img.img-responsive.img-center}

You can filter the list of roles or users thanks to the search field located to the right. To add an element to the list on the right, click a role or a user and then click ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-019.png). You are good to go, confirm by clicking on OK.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/create11.png){:.img.img-responsive.img-center}

The map has been shared and the recipient(s) can access it from the "Maps shared with me" section.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/share5.png){:.img.img-responsive.img-center}

{:.table.table-bordered}
| ![notice]({{ site.url }}/assets/notice.png)  | The recipient of a shared map can access it but cannot edit nor delete it. |

