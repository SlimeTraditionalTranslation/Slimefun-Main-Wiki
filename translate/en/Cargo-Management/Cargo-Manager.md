---
title: Cargo Manager
sidebar_position: 2
---

A Cargo Manager is the core part of a [cargo management system](Cargo-Management.md). It allows items to be moved within a cargo network.

## Obtaining

A cargo manager can be crafted in an [Enhanced Crafting Table](../Basic-Machines/Enhanced-Crafting-Table.md).

## Usage

A cargo manager is a requirement of every cargo network, as it allows the transfer of items between the nodes in its range. It does not move items by itself: instead, it must be [connected](Connector-Node.md) to [input](Input-Node.md) and [output nodes](Output-Node.md) (or [advanced output nodes](Advanced-Output-Node.md)).

To be connected, a cargo manager must be aligned within 6 blocks of a cargo node, in a straight line (no diagonals).

There can only be one cargo manager per cargo network. Only [connector nodes](Connector-Node.md) can be used to extend its range.

By default, a cargo manager will emit red particles throughout its range, as well as through any connected connector nodes. This visual effect can be turned on or off by right-clicking the cargo manager.
