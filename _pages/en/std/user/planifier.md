---
layout: sidebar
title: Visit planning and optimized routes
categories: documentation
permalink: /plan-en
lang: en
ref: planifier
---

# Visit planning and optimized routes

This article will show you how to add objects to a visit plan, generate an optimized itinerary and create [events](https://help.salesforce.com/articleView?id=events_and_calendars.htm) in the Salesforce calendar from the app.

<iframe style="display:block;" class="img-center" width="560" height="315" src="https://www.youtube.com/embed/lObRYU-E9CQ" frameborder="0" allowfullscreen></iframe>

---

## In this article
{:.no_toc}

* Table of Contents
{:toc}

---

## Adding an event to the Salesforce calendar

To plan an event related to a record, click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-047.png) icon in the list of [actions](/actions-en) available for a record.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-new_event_action-en.png){:.img.img-responsive.img-center}

The event creation form appears in a modal window, fill in the [mandatory fields](https://help.salesforce.com/articleView?id=event_fields_lex.htm) to create your event in Salesforce.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-new_event_modal-en.png){:.img.img-responsive.img-center}

## Planning an optimized route

The visit planning module lets you add several events to your Salesforce calendar in a single action.

Click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-084.png) icon of the toolbar to display the routing panel.

To add a waypoint, you can:
- Click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/icon.png) icon in the itineray panel to select several waypoints you want to add to your route (it then becomes active and green)
- Click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-057.png) icon from the list of [actions](/actions-en) available for each object

When an object is added to a route, a number appears in the center of its marker.

Several itinerary options are available:
- By car or by walk (optional)
- Route only between records or from the last know position via geolocation
- Optimized route (changes the order of waypoints for the most efficient) or not (keeps the order)

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-itinerary_points-en.png){:.img.img-responsive.img-center.img-bordered}

Click the "Compute" button to compute the itinerary. It is shown on the map and a summary appears at the top. 

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/visit7.png){:.img.img-responsive.img-center}

Click on the "Show details" link to display the step by step routing information.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user-en/visit8.png){:.img.img-responsive.img-center}

At any time, user can remove a record from the list, click on the cross next to the object name.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-remove_object.png){:.img.img-responsive.img-center.img-bordered}

## Adding multiple events to the calendar at once

To add all selected objects to your calendar, click "Add to calendar".

In the modal window choose for the series of events:
- Date
- Subject (the list of event record types is [managed in Salesforce](https://help.salesforce.com/articleView?id=event_fields_lex.htm))
- Start time
- End time

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-itinerary_events-en.png){:.img.img-responsive.img-center}

Please note that:
- The first event starts at 8am by default
- Events last 60 minutes by default
- The travel time between two events is rounded up to 15 minutes to take into account the start time of the next one
- A change in the end time of an event automatically changes the start time of the following ones

## Creating recurring events

Clicking on "Repeat series of events" allows to make them recurring with a frequency:

### Weekly

Choose:
- How frequently they will repeat in weeks
- Which days of the week from Monday to Sunday (several choices possible)

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_weekly-en.png){:.img.img-responsive.img-center}

### Monthly

Choose:
- How frequently they will repeat in months
- Which day of the week from Monday to Sunday (single choice)
- For the day of the week, if it is the 1st, 2nd, 3rd, 4th or last of the month

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_monthly-en.png){:.img.img-responsive.img-center}

A click on the link "[Latest date]" automatically calculates this date by taking into account the following constraints:
- Weekly: End Date = (Current Date) + 52 * Interval (in weeks)
- Monthly: End Date = (Current Date) + 60 * Interval (in months)

<div class="alert alert-info" role="alert"> <strong>Note :</strong> The maximum End date depends on the type of recurrence and is a parameter imposed by Salesforce since it is not possible to create endless recurring events.</div>

In the Galigeo calendar, recurring events can be identified thanks to the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_icon.png) icon (same in the mobile app).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_cal-en.png){:.img.img-responsive.img-center.img-bordered}

Same in the Salesforce calendar.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-recurr_events_cal_sf-en.png){:.img.img-responsive.img-center.img-bordered}

## Managing events

To open the calendar, click on the ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/Galigeo4SFDC_UserGuide_St-054.png) icon. A full week view is now available on the right of the window and events previously created are displayed:

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal-en.png){:.img.img-responsive.img-center.img-bordered}

<div class="alert alert-info" role="alert"> <strong>Note :</strong> Only events within a certain date range are visible in the calendar. It is 30 days in the past, 60 in the future by default, and can be changed in the options of the admin page.</div>

All events are directly movable from there by drag and drop. Their duration is also editable by dragging down the bottom of an event.

A click on a date in the calendar filters all records on the map and in the search record panel and the map centers on them (click again on the date to see all records).

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal_itinerary-en.png){:.img.img-responsive.img-center.img-bordered}

You can know which objects have events. A star ![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-marker_event.png) at the center of the marker indicates if there is an event related to it.
Supported events are those of **last 30 and next 60 days**.

If user wants to see the calendar of another user in its organization, click on the "Change" link at the top in the calendar.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal_change_collab-en.png){:.img.img-responsive.img-center.img-bordered}

Click to select a user from the list to display their calendar. It is even possible to filter this list by typing in the user input text field.

![Galigeo for Salesforce User]({{ site.url }}/assets/img-std-user/plan_events-cal_change_collab_modal-en.png){:.img.img-responsive.img-center}

User can create/edit an event for other user if he has enough privileges.
