---
title: 物流節點 (輸入)
sidebar_position: 4
---

An Input Node is the component of a [cargo network](Cargo-Management.md) which filters and distributes items to be received by [output nodes](Output-Node.md) (or [advanced output nodes](Advanced-Output-Node.md)).

## 取得

Input nodes can be crafted in groups of two in an [Enhanced Crafting Table](../Basic-Machines/Enhanced-Crafting-Table.md).

## 使用方法

只要網絡中有可用的匹配物流節點 (輸出)，物流節點 (輸入) 就會將物品從放置它們的容器移入網絡。

### 放置

A cargo input node must be placed (shift-right click) onto a container or [machine](../Electric-Machines/Electric-Machines.md), and aligned within 6 blocks of a [cargo manager](Cargo-Manager.md) or a [connector](Connector-Node.md) in range of one (no diagonals).

### 設定

右鍵點擊物流節點 (輸入)會顯示配置以下設置的界面，從左到右：

* **3x3 格子界面 ** - 放置在那裡的物品會被包含 / 排除。
* ** 類型：白名單 / 黑名單 ** - 控製界面中的物品是列入白名單（包括）還是列入黑名單（排除）。
* **包括子 ID/耐久性** - 如果啟用，只有與界面中的物品具有相同耐久性的物品才會被列入白名單/黑名單。
* **循環模式** - 如果啟用，物品將在頻道上平均分配。
* **包括敘述** - 如果啟用，只有與界面中的物品具有相同敘述的物品才會被列入白名單/黑名單。
* **頻道** - 從中獲取物品的頻道。
