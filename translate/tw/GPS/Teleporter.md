---
title: Teleporter
sidebar_position: 13
---

![Teleporter](https://raw.githubusercontent.com/Slimefun/Slimefun-Wiki/master/images/Teleporter.png)

The Teleporter is a Multiblock GPS-based device.

## 取得

A Teleporter is created by placing a [GPS Teleporter Matrix](GPS-Teleporter-Matrix.md) encircled by eight [GPS Teleporter Pylons](GPS-Teleporter-Pylon.md), and placing a [GPS Activation Device](GPS-Activation-Device.md) on the GPS Teleporter Matrix.

## 使用方法

Teleporters are used to teleport to waypoints created using a [GPS Marker Tool](GPS-Marker-Tool.md) or a [GPS Emergency Transmitter](GPS-Emergency-Transmitter.md).

Teleporting speed is determined by the distance of the given waypoint and the [GPS network complexity](GPS-Transmitter.md).

If the network complexity is lower than 100, it will always take 50 seconds to teleport. If the network complexity is above 100, the speed is given by the following equation: ![Teleporting Speed Equation](https://raw.githubusercontent.com/Slimefun/Slimefun-Wiki/master/images/TeleportEquation.png) seconds, where DistanceSquared cannot be greater than 100 000 000, and the whole expression cannot be greater than 20.5 seconds.
