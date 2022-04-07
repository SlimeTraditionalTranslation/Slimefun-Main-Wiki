---
title: Input Node
sidebar_position: 4
---

An Input Node is the component of a [cargo network](Cargo-Management) which filters and distributes items to be received by [output nodes](Output-Node) (or [advanced output nodes](Advanced-Output-Node)).

## Obtaining

Input nodes can be crafted in groups of two in an [Enhanced Crafting Table](Enhanced-Crafting-Table).

## 使用方法

Input nodes move items from the container on which they are placed into the network, as long as there is an available matching output node in the network.

### Placement

A cargo input node must be placed (shift-right click) onto a container or [machine](Electric-Machines), and aligned within 6 blocks of a [cargo manager](Cargo-Manager) or a [connector](Connector-Node) in range of one (no diagonals).

### Configuration

Right-clicking an input node displays an interface to configure the following settings, from left to right:

* **3x3 grid** - Items placed there are included/excluded from being sent into the network.
* **Type: Whitelist/Blacklist** - Controls whether the items in the grid are whitelisted (included) or blacklisted (excluded).
* **Include Sub-IDs/Durability** - If enabled, only the items with the same durability as the ones in the grid will be whitelisted/blacklisted.
* **Round-Robin Mode** - If enabled, items will be distributed equally on the channel.
* **Include Lore** - If enabled, only the items with the same lore as the ones in the grid will be whitelisted/blacklisted.
* **Channel** - The channel in which items are sent.
