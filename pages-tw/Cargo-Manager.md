---
title: "Cargo-Manager"
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

A Cargo Manager is the core part of a [cargo management system](/docs/slimefun/cargo-management). It allows items to be moved within a cargo network.

## Obtaining

A cargo manager can be crafted in an [Enhanced Crafting Table](/docs/slimefun/enhanced-crafting-table).

## Usage

A cargo manager is a requirement of every cargo network, as it allows the transfer of items between the nodes in its range. It does not move items by itself: instead, it must be [connected](/docs/slimefun/connector-node) to [input](/docs/slimefun/input-node) and [output nodes](/docs/slimefun/output-node) (or [advanced output nodes](/docs/slimefun/advanced-output-node)).

To be connected, a cargo manager must be aligned within 6 blocks of a cargo node, in a straight line (no diagonals).

There can only be one cargo manager per cargo network. Only [connector nodes](/docs/slimefun/connector-node) can be used to extend its range.

By default, a cargo manager will emit red particles throughout its range, as well as through any connected connector nodes. This visual effect can be turned on or off by right-clicking the cargo manager.
