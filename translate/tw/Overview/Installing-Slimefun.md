---
title: 安裝黏液科技
sidebar_position: 2
---

## 先決條件

要安裝黏液科技, 你需要使用 Spigot 或 Paper 插件伺服器核心 (最好是最新版本)

儘管我們僅對 Paper 和 Spigot 進行測試, 但其中任何一個的分支也都應該可以運作.

### 黏液科技下載

你可以在兩個黏液科技分支中做選擇, ["穩定" 分支](https://thebusybiscuit.github.io/builds/TheBusyBiscuit/Slimefun4/stable/) 或 [主要 "開發" 分支](https://thebusybiscuit.github.io/builds/TheBusyBiscuit/Slimefun4/master/). 穩定構建已經存在很長的時間, 並以經過測試, 開發版是你可以獲得最新的構建. 如果你的伺服器非常依賴於可運作的黏液科技構建, 請選擇穩定構建. 但如果你想要回報問題並幫助我們更快的發現問題並為黏液科技做出貢獻, 請考慮使用開發構建 ( "穩定"構建的錯誤回報可能會被忽略, 因為他們已經過時). 你可以點擊任何黏液科技構建, 以查看該構建的所有兼容 Minecraft 的版本.

**我們通常建議開發版本優先於穩定版, 因為它們是黏液科技最新的版本. 穩定分支僅每月更新一次, 甚至更新頻率更低, 因此修復可能需要相當長的時間才能納入這些構建.**

## 如何安裝

將黏液科技的 Jar 檔案拖放到伺服器的 */plugins/* 資料夾中. 然後重啟你的伺服器.

***請勿使用 /reload, 因為它可能會導致大量的記憶體洩漏.***

After the restart, you should notice a new folder called */data-storage/* in your servers root directory. This folder contains all necessary Slimefun data. If you plan to upgrade or move servers, or create a backup, it is ***very*** important that you also back this folder up, as deleting it results in loss of ALL Slimefun related data, such as levels, unlocked items, etc.

## Configuring Slimefun

This part assumes you now have Slimefun 4 installed on your server.

When viewing the Slimefun plugin folder, you will notice a few different .YML files. Start by viewing *config.yml* in your favorite text editor. Personally, I recommend [Notepad++](https://notepad-plus-plus.org).

Most of the things in this file are very self explanatory, from enabling certain items to choose how Slimefun Research behaves in creative mode. Slimefun uses an auto-updater to check for updates periodically, if you wish to disable this, or your host has somehow disabled things like that, set it to *false*

**Items.yml*** allows you to enable or disable certain items*globally*. If you install multiple addons for Slimefun, this file can get very big, so, a recommendation is to take your time and install addons slowly, if again, you plan on enabling or disabling certain items.

**messages.yml** contains all data for messages when using Slimefun. You can edit what the plugin sends a player when a certain event occurs.

**Researches.yml** allows you to edit the XP Values of items in Slimefun, as well as their names, you can also disable researching all together if you wish to allow players the ability to use all of Slimefun right off the bat.

**permissions.yml** allows you to define permission nodes for Slimefun items to restrict the usage of items based on user's permission levels.

Any changes you make should be saved, then restart the server. Again, ***do not use /reload.*** If you are experiencing issues, and you issued a server reload, just stop and restart the server, since this fixes most issues.

### 伺服器優化指南

Here is a full article on how to [Optimize your Slimefun Server](Server-Optimizations)

## Additional Addons

If you wish to install additional addons, refer to [this page](Addons) to see all the addons that are compatible with your version of Slimefun4.

These additional addons require Slimefun4 and will create their own independent folders within your /plugins folder. Configuration should be very straight forward for these plugins as well. Remember that you can also disable any Items from Addons in Slimefun's Items.yml file.
