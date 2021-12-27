---
title: "保護插件"
description: ""
lead: ""
date: 2021-12-27T00:00:00+08:00
lastmod: 2021-12-27T00:00:00+08:00
draft: false
images: []
menu: 
  docs:
    parent: "sf-other"
weight: 30
toc: true
---

Slimefun4 開箱即用的支持了很多保護插件.

這樣做是為了防止玩家濫用Slimefun物品使其他人感到難過.

本文章包含所有受支持的保護插件列表, 及有關如何增加對插件的支持說明.

## 支持的保護插件

在默認情況下支持以下插件.

如果支持離線玩家的所有者離線, 則將可以在所有者離線時可編輯的機器人可以繼續運行.

如果插件不支持離線玩家, 那麼你的機器人始終需要你在線上時才能正常運行

:heavy_check_mark: = 完全支持

:heavy_minus_sign: = 部分支持 (例如 僅在未受保護的區域)

:x: = 不支持

N/A = 不適用

| 插件 | 支持玩家 | 支持離線玩家 | 支持PvP | 支持實體
| ------------------ | :----: | :----: | :----: | :---: |
| ASkyBlock | :heavy_check_mark: | :heavy_check_mark: | :heavy_minus_sign: | :heavy_minus_sign: |
| BentoBox | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| BlockLocker | :heavy_check_mark: | :heavy_check_mark: | N/A | N/A |
| ChestProtect | :heavy_check_mark: | :heavy_check_mark: | N/A | N/A |
| FactionsUUID | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| FunnyGuilds | :heavy_check_mark: | :x: | :heavy_minus_sign: | :heavy_minus_sign: |
| GriefPrevention | :heavy_check_mark: | :heavy_minus_sign: | :heavy_check_mark: | :heavy_check_mark: |
| LandLord | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Lands | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Lockette | :heavy_check_mark: | :heavy_check_mark: | N/A | N/A |
| LWC | :heavy_check_mark: | :heavy_minus_sign: | N/A | N/A |
| PlotSquared | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| PreciousStones | :heavy_check_mark: | :x: | :heavy_check_mark: | :heavy_check_mark: |
| RedProtect | :heavy_check_mark: | :heavy_minus_sign: | :heavy_check_mark: | :heavy_check_mark: |
| Towny | :heavy_check_mark: | :x: | :heavy_minus_sign: | :heavy_minus_sign: |
| WorldGuard | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

### 沒看到你的保護插件?

可能該插件不提供集成, 或是該插件作者尚未添加支持, 或者實際上不支持.

許多插件實際上需要上列表中的WorldGuard或其他插件, 並在後台使用該插件.

如果某個插件未顯示在此列表中, 請詢問該插件作者是否在後台使用了另一個保護插件.

如果沒有, 請隨時將它們鏈接到[官方文章](https://github.com/Slimefun/Slimefun4/wiki/Protection-Plugins), 我們稍後將介紹如何添加支持.

## 支持的保護紀錄

Slimefun4也支持了一些保護紀錄器.

例如, 這些紀錄器可以允許你回退某些操作, 像是破壞Slimefun物品以異常的方式.

這是默認下我們支持的所有插件列表.

| 插件 | 支持破壞方塊 | 支持放置方塊 |
| ------------------ | :----: | :----: |
| CoreProtect | :heavy_check_mark: | :heavy_check_mark: |
| LogBlock | :heavy_check_mark: | :x: |

## 為你的保護插件添加支持

保護集成在 dough (<https://github.com/baked-libs/dough>).

要對自己的插件進行支持, 你所需要的是對該專案發出合併請求.

這是你需要做的:

1. 將插件做為依賴選項添加至 pom.xml (in [dough-api](https://github.com/baked-libs/dough/blob/main/dough-protection/pom.xml) 和 [dough-protection](https://github.com/baked-libs/dough/blob/main/dough-protection/pom.xml))
2. 創建一個擴展 [ProtectionModule.java](https://github.com/baked-libs/dough/blob/main/dough-protection/src/main/java/io/github/bakedlibs/dough/protection/ProtectionModule.java) 並將其添加至 [modules - package](https://github.com/baked-libs/dough/tree/main/dough-protection/src/main/java/io/github/bakedlibs/dough/protection/modules)
3. 覆蓋所需的函數; 確保區分 [Interaction.java](https://github.com/baked-libs/dough/blob/main/dough-protection/src/main/java/io/github/bakedlibs/dough/protection/Interaction.java) 的不同類型; 並考慮增加對離線玩家的支持,如果沒有請進行檢查.
4. 載入一個例子當你的插件載入了 [ProtectionManager.java](https://github.com/baked-libs/dough/blob/main/dough-protection/src/main/java/io/github/bakedlibs/dough/protection/ProtectionManager.java)
5. 向 dough 提交 [Pull Request](https://github.com/baked-libs/dough/pulls)
(**請注意** 這可能翻譯得不好 建議直接看原文)
