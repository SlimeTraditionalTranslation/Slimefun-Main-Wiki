---
title: 物流核心
sidebar_position: 2
---

A Cargo Manager is the core part of a [cargo management system](Cargo-Management.md). 它可以讓物品在物流網絡內移動。

## 取得

A cargo manager can be crafted in an [Enhanced Crafting Table](../Basic-Machines/Enhanced-Crafting-Table.md).

## 使用方法

物流核心是每個物流網絡的必需品，因為它允許在它範圍內的節點之間傳輸物品。 It does not move items by itself: instead, it must be [connected](Connector-Node.md) to [input](Input-Node.md) and [output nodes](Output-Node.md) (or [advanced output nodes](Advanced-Output-Node.md)).

要連接，物流核心必須在物流節點的 6 個方塊內，在一條直線上（無對角線）對齊。

每個物流網絡只能有一個物流核心。 Only [connector nodes](Connector-Node.md) can be used to extend its range.

默認情況下，物流核心將在它範圍內以及通過任何連接的物流節點 (中繼)發射紅色粒子。 可以通過右鍵點擊物流核心來開啟或關閉此視覺效果。
