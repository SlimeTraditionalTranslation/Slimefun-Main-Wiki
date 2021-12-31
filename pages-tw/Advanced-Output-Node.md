---
title: "Advanced Output Node"
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

An Advanced Output Node is a component of a [cargo network](/docs/slimefun/cargo-management) which can receive items sent by [input nodes](/docs/slimefun/input-node).<br> It is a more complex type of [output node](/docs/slimefun/output-node), with additional settings to filter items.

## Obtaining

Advanced output nodes can be crafted in an [Enhanced Crafting Table](/docs/slimefun/enhanced-crafting-table).

## Usage

Advanced output nodes move the items in the network matching their settings into the container on which they are placed.

### Placement

An advanced output node must be placed (shift-right click) onto a container or [machine](/docs/slimefun/electric-machines), and aligned within 6 blocks of a [cargo manager](/docs/slimefun/cargo-manager) or a [connector](/docs/slimefun/connector-node) in range of one (no diagonals).

### Configuration

Right-clicking an advanced output node displays an interface to configure the following settings, from left to right:

* **3x3 grid** - Items placed there are included/excluded from being received by the node.
* **Type: Whitelist/Blacklist** - Controls whether the items in the grid are whitelisted (included) or blacklisted (excluded).
* **Include Sub-IDs/Durability** - If enabled, only the items with the same durability as the ones in the grid will be whitelisted/blacklisted.
* **Include Lore** - If enabled, only the items with the same lore as the ones in the grid will be whitelisted/blacklisted.
* **Channel** - The channel from which items are taken.
