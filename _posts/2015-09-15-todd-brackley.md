---
title: Speaker - Todd Brackley
layout: post
author: Gareth Evans
---

## Hypermedia web API as a network of data

This talk narrowly focuses on the "network of data" that is exposed through a hypermedia web API. Such a design requires that clients follow links to traverse through the structure of relations from a known starting point. This is just one of the ways the web works.


We are currently refactoring a "reporting" application that was underperforming. Amongst its issues are latency for the users and high server CPU utilisation. We have seen these problems dissipate by, amongst other things, breaking up data resources into small atoms requested separately. This is counter-intuitive when compared to batch style APIs (currently, the dominant style).

Building distributed applications the way the web works is subtle rather than complex with no magic. Much can be done with simple tools and RFC standards. For example, we will show how the humble, generic web browser (no JavaScript) is our first and foremost client to explore the network of data. We have found this opens up the domain of the application not only to developers but also to testers and analysts. To provide you with experience, we will open up the reporting API for the sessions with time to ask questions. So bring along your laptop.

## Bio:

Todd is a founder of [Hypr](https://hypr.nz/) and an experienced coding architect with a passion for improving the way teams deliver high quality valuable code.