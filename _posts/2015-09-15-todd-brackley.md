---
title: Speaker - Todd Brackley
layout: post
author: Gareth Evans
---

## Hypermedia web API as a network of data

This talk narrowly focuses on the "network of data" that is exposed through a hypermedia web API. Such a design requires that clients follow links to traverse through the structure of relations from a known starting point.

We are currently refactoring a "reporting" application that was underperforming. Amongst its issues are latency for the users and high server CPU utilisation. We have seen these problems disappear when we build the system the way the web works.

We demonstrate that one of the ways the web works is by breaking up data resources into small atoms, and by making lots of requests. This is counter-intuitive when compared to large-batch-style APIs (currently, the dominant style).

Building distributed applications the way the web works is subtle rather than complex. It doesn't need to be as hard as it has been! We avoid sledge hammers in favour of simple tools (and using RFC standards). The humble, generic web browser is always our first and foremost client. In being able to use such simple tools, we have found this opens up the domain of the application not only to developers but also to testers, analysts and customers.

## Bio:

Todd is a founder of [Hypr](https://hypr.nz/) and an experienced coding architect with a passion for improving the way teams deliver high quality valuable code.