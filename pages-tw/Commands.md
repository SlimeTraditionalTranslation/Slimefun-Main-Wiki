---
title: "Commands"
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

此頁面包含了有關黏液科技的指令資訊. 儘管黏液科技中沒有很多指令, 但了解這些指令仍然很重要. 你可以使用前綴 /slimefun 或 /sf. 兩者都有用. 但為了簡單, 我們將頁面的指令都列為 /sf.

() = 必要

[] = 可選

## 對於使用者的指令

| 指令                       | 描述                                  | 需求權限                        |
| ------------------------ | ----------------------------------- | --------------------------- |
| /sf help                 | 顯示所有黏液科技中的指令                        | 無                           |
| /sf guide                | 給予你一本黏液科技指南                         | slimefun.command.guide      |
| /sf open_guide           | 直接打開黏液科技指南                          | slimefun.command.open_guide |
| /sf versions             | 顯示當前安裝的黏液科技版本及附加                    | slimefun.command.versions   |
| /sf stats                | 顯示你當前的統計資訊, 頭階, 總花費經驗等級, 完成的研究百分比等. | 無                           |
| /sf search <search term> | 打開指南, 並列出你所搜索字詞匹配的物品.               | slimefun.command.search     |

## 管理員使用的指令

| 指令                                             | 描述                                   | 需求權限                        |
| ---------------------------------------------- | ------------------------------------ | --------------------------- |
| /sf give (Player) (Slimefun Item) [Amount]     | 給予指定的玩家指定黏液科技物品                      | slimefun.cheat.items        |
| /sf cheat                                      | 打開 "作弊" - 模式的黏液科技指南版本, 點擊任何物品來將其給予自己 | slimefun.cheat.items        |
| /sf research (Player) (Research / all / reset) | 解鎖某個研究給玩家, 解鎖所有研究給玩家或重置玩家的所有研究       | slimefun.cheat.researches   |
| /sf stats (Player)                             | 顯示特定玩家的統計                            | slimefun.stats.others       |
| /sf teleporter (Player)                        | 顯示特定玩家的GPS傳送點, 並允許你傳送到該點             | slimefun.command.teleporter |
| /sf timings                                    | 向您顯示黏液科技的診斷工具, 用於辨識某些機器對伺服器的影響       | slimefun.command.timings    |
| /sf debug_fish                                 | 給予你Debug工具  . 用它來查詢或刪除黏液科技方塊資料       | slimefun.debugging          |
| /sf backpack (Player) (ID)                     | 給予你與參數匹配的還原背包. 僅適用於回收物品.             | slimefun.command.backpack   |
| /sf charge                                     | 將你手上的物品充滿電.                          | slimefun.command.charge     |
