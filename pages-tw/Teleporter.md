---
title: "Teleporter"
description: ""
lead: ""
date: 2021-12-27T00:00:00+08:00
lastmod: 2021-12-27T00:00:00+08:00
draft: false
images: [ ]
menu:
  docs:
    parent: "tbd"
weight: 999
toc: false
---

The Teleporter is a Multiblock GPS-based device.

<img src="/slimefun-images/Teleporter.png" alt="Teleporter" />

## Obtaining

A Teleporter is created by placing a [GPS Teleporter Matrix](/docs/slimefun/gps-teleporter-matrix) encircled by eight [GPS Teleporter Pylons](/docs/slimefun/gps-teleporter-pylon), and placing a [GPS Activation Device](/docs/slimefun/gps-activation-device) on the GPS Teleporter Matrix.

## Usage

Teleporters are used to teleport to waypoints created using a [GPS Marker Tool](/docs/slimefun/gps-marker-tool) or a [GPS Emergency Transmitter](/docs/slimefun/gps-emergency-transmitter).

Teleporting speed is determined by the distance of the given waypoint and the [GPS network complexity](/docs/slimefun/gps-transmitter).

If the network complexity is lower than 100, it will always take 50 seconds to teleport. If the network complexity is above 100, the speed is given by the following equation: <img src="/simefun-images/TeleportEquation.png" alt="Teleporting Speed Equation" /> seconds, where DistanceSquared cannot be greater than 100 000 000, and the whole expression cannot be greater than 20.5 seconds.
