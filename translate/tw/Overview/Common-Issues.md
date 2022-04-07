---
title: 常見問題
sidebar_position: 10
---

這個頁面包含了有用的關於遊戲內常見的問題與如何解決這些問題.

以下大多數情況都需要有不同程度權限的工作人員: 如果沒有, 請將此連結給有更高權限的人!

**警告: 有些問題不只一種可行的解決方法, 通過從最不干擾到最干擾的階段來話芬表示; 強烈建議在你採用任何進一步的方法之前, 先嘗試所有先前的階段, 因為較低的階段風險比較小, 並且無論如何都能解決大多數發生的問題. 如果你嘗試列表中所有的內容均未成功, 請考慮 [提交錯誤報告!](How-to-report-bugs)**

## 漂浮標籤

有些黏液科技的物品在放置時會自動創建漂浮文字, 尤其是 [能量調節器](Energy-Regulator) 和 [物流核心](Cargo-Manager).

這些漂浮文字應在破壞機器時消失, 但有時可能出錯, 並留下一些不想消失的文字. 你要如何解決?

_注意: 請確保這不是由鬼方塊引起的 (請查看"不可放置的方塊")!_

### 如何解決這個 (第一階段)

移除任何在漂浮文字下方的調節器/核心, 然後靠近它並以管理員身分執行:
> /execute as <your_name> at @s run execute as @e[type=armor_stand,nbt={Invisible:1b},distance=..3] run data merge entity @s {Invisible:0}

你現在可以直接用手打掉盔座. 你現在可以直接用手打掉盔座. 你可能需要打好幾次, 因為它們可能已經生成了一堆並堆疊在一起, 這取決於你所使用的插件.

_提示: 建議使用 MyCommands, CommandOverride 或任何相似的插件來設定一個別名, 以便於記憶與教導 (一個範例像是 /holokill)._

### 如何解決這個 (第二階段)

通過以下指令切換成旁觀者模式
> /gamemode spectator

You should see the invisible armor stand and better gauge where the feet are; using this information, place a new regulator just below the tag on the first block not occupied by the armor stand itself (get one via /sf cheat).

The regulator will try to place its own armor stand which will replace the corrupt ones and behave normally: you should now be able to remove the regulator you've just placed, removing all tags.

### How to fix this (Stage 3)

If the hologram keeps respawning you're very likely to be dealing with a ghost block like the ones dealt with under Unplaceable blocks, with the only difference it's also spawning a hologram because it's one of the items listed up top. Simply follow the procedure to get rid of any ghost block and you should be golden.

## Unplaceable blocks

If you encounter a location that seems empty but will cancel your action when you try to place any block there you're probably looking at a ghost Slimefun block. This means a Slimefun item used to be placed there (usually an [android](Androids) or a [cargo component](Cargo-Management)) and its data was not correctly removed.

### How to fix this (Isolated block)

Get a debug fish by running the following as operator:
> /sf debug_fish

_(Optional): Use the shift right click function to place a dummy head where the ghost block is and try to punch it out: if a Slimefun head drops you're sure to have a ghost block (the opposite is not necessarily true as the ghost Slimefun item could've been a full block and not a head, it's less likely though and just good to get a confirmation if possible)._

Shift right click to place a dummy head, then shift left click it: an animation of the head being broken and the event being canceled should be seen and you'll get a message in chat; this will remove whatever data is still linked to the location.

Punch out the dummy head.

### How to fix this (Cluster of blocks)

This is very similar to the procedure for isolated blocks: in this case instead of placing all the dummy heads one by one you can run WorldEdit commands to speed up the placing process.

Use WorldEdit to select the cluster of blocks and its surroundings and execute:
> //set stone

As per the isolated blocks procedure, shift right click all the incriminated spots to remove any data they may retain.

Remove the stone by executing:
> //undo

## Circuit Boards not dropping

If you kill Iron Golems and they don't seem to drop any Iron Golems, it may be due to a conflicting plugin.

Plugins like **MobStacker** or similar are known to have a lot of issues with custom item drops.

### 如何解決這個 (第一階段)

The best solution to this problem is to enable custom item drops in that plugins config, if such an option exist.

Or ask the authors of that plugin whether there is a way to toggle this behaviour.

### 如何解決這個 (第二階段)

A more drastic approach would be to switch over to a Mob-Stacking plugin that supports custom drops.

_At this point we do not have a list of mob-stacking plugins that are confirmed to work with Slimefun, if you use a plugin that works without any issues, feel free to name it right here. See [Expanding the Wiki](Expanding-the-Wiki)_
