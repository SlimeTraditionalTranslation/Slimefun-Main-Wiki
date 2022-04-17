---
title: 高級物流節點 (輸出)
sidebar_position: 6
---

An Advanced Output Node is a component of a [cargo network](Cargo-Management.md) which can receive items sent by [input nodes](Input-Node.md).

It is a more complex type of [output node](Output-Node.md), with additional settings to filter items.

## 取得

Advanced output nodes can be crafted in an [Enhanced Crafting Table](../Basic-Machines/Enhanced-Crafting-Table.md).

## 使用方法

高級物流節點 (輸出) 將網絡中與其設置匹配的物品移動到放置它們的儲存單元中。

### 放置

An advanced output node must be placed (shift-right click) onto a container or [machine](../Electric-Machines/Electric-Machines.md), and aligned within 6 blocks of a [cargo manager](Cargo-Manager.md) or a [connector](Connector-Node.md) in range of one (no diagonals).

### 設定

右鍵點擊高級物流節點 (輸出)會顯示配置以下設置的界面，從左到右：

* **3x3 格子界面 ** - 放置在那裡的物品會被包含/排除。
* ** 類型：白名單 / 黑名單 ** - 控製界面中的物品是列入白名單（包括）還是列入黑名單（排除）。
* **包括子 ID/耐久性** - 如果啟用，只有與界面中的物品具有相同耐久性的物品才會被列入白名單/黑名單。
* **包括敘述** - 如果啟用，只有與界面中的物品具有相同敘述的物品才會被列入白名單/黑名單。
* ** 通道 ** - 從中獲取物品的頻道。
