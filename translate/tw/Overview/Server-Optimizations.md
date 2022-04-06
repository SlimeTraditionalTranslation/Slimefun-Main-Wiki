---
title: 伺服器優化指南
sidebar_position: 3
---

黏液科技是一個非常大的插件, 因此總是對其性能產生疑問.

此插件自2013年以來就一直存在, 並多年來進行許多更改與優化. 但根據你使用此插件的方式, 效能可能會有所不同.

本文章幫助你發現瓶頸和局限性, 並指導你優化伺服器和黏液科技設定, 以使其盡可能順暢的運行.

以下是有關於如何優化伺服器或黏液科技設定的一些最重要提示:

## 1. 時刻關注效能狀態

伺服器優化最重要的是資訊.

你需要知道要尋找甚麼才能提高性能, 因此這裡是你應該熟悉的一些非常重要的工具:

### a) 伺服器分析 (/timings)

Spigot 和 Paper 都已經帶有自己的分析. 你可以透過聊天室執行 `/timings` 來訪問此分析. 這些事件分析器可以深入瞭解你的伺服器所面臨的問題, 甚至可以將其分解為你所使用的各個插件, 和這些插件的特定執行任務.

**注意:** 理解 timings-report 可能是一項艱難的任務. 請參閱此 [Spigotmc.org上的維基文章](https://www.spigotmc.org/wiki/timings/) 以獲得有關於timings的工作原理.

但請記住, 並非這些報告中的每個數字都很重要, 特別是"startup-tasks"在不影響性能的狀況下可能會顯示為紅色, 因為它們僅在伺服器啟動過程中運行.

### b) 黏液科技分析 (/sf timings)

黏液科技也提供了自己的分析工具, 讓你找到卡頓來源.

通過運行 `/sf timings` 你可以大致了解哪些區塊, 哪些機器或附加對性能有很大的影響. 試試看吧, 讓自己熟悉一下! 你肯定會看到黏液科技和附加的不同內容之間的一些差異.

### c) 基於插件的伺服器分析

除了標準的timings工具外, 還有一些第三方工具可以幫助你和開發者追蹤代碼中的卡頓問題. 我們個人推薦 [:zap: Spark by @Luck](https://www.spigotmc.org/resources/spark.57242/). Spark的報告已經幫助我們解決了一些優化問題並確定了瓶頸, 所以它似乎是一個非常有用的插件, 對伺服器擁有者和開發者都是如此.

## 2. 選擇合適的伺服器軟體

選擇合適的伺服器軟體在伺服器優化中起著重要的作用.

自從CraftBukkit停產以來, [Spigot](https://www.spigotmc.org/) 已經成為標準的伺服器軟體. 但有無數的替代品和分叉可以選擇. [Paper](https://papermc.io/) 是 Spigot 的一個分叉, 事實證明它的性能比 Spigot 略好, 而且還提供了更好 更詳細的timings報告.

黏液科技的 **物流網路** 已被優化, 可在使用 [Paper](https://papermc.io/) 時發揮最佳效果.

但是還是有無數 Bukkit/Spigot 的其他分叉, 聲稱也能提高效能. 我們建議你自己研究一下並做出自己的選擇.

如果你能控制你的伺服器Java版本, 盡量選擇可能的最新Java版本.

一旦你選擇了一個你認為合適你的伺服器軟體, 你可能要花些時間來設定該軟體.

關於如何做到這一點, 已經有許多外部指南, 所以我們只在這裡連結其中的一些 (*他們在這方面比我們做的好*):

* [減少Lag - 一個基礎指南](https://www.spigotmc.org/wiki/reducing-lag/) (SpigotMC 維基)
* [伺服器優化指南](https://www.spigotmc.org/threads/guide-server-optimization%E2%9A%A1.283181/) (由 @Celbrimbor 在 SpigotMC 論壇上發表)
* [優化 Java 垃圾收集](https://aikar.co/2018/07/02/tuning-the-jvm-g1gc-garbage-collector-flags-for-minecraft/) (@aikar 的個人部落格)

## 3. 避免 /reload

**永遠不要使用 `/reload`. 永遠.**

每當你添加了新的插件或編輯的設定文件時, 請重新啟動伺服器. 使用 `/reload` 將會導致巨大的 [記憶體洩漏](https://en.wikipedia.org/wiki/Memory_leak) 對伺服器的性能產生負面影響. `/reload` 也並不是能安全使用的, 應不惜一切代價避免使用.

許多插件並不意味著要處理重新加載, 黏液科技是其中之一, 你應該始終重啟你的伺服器.

## 4. 關閉向後兼容

黏液科技已經存在很長時間了, 有許多伺服器從多年前就在使用它.

任何在 **2019年夏季之前** 使用過黏液科技的伺服器都會有一堆舊的黏液物品. 這些物品可能仍在使用舊的物品格式, 這種格式速度慢且效率低下. 舊格式依賴於冗長的物品比較與查找. Everytime a player clicks with an Item in their hand, Slimefun has to compare this item with every Slimefun item in existence, including any items from addons. This is a relatively quick operation but the time increases with the amount of addons and the amount of players on your server.

The new item format instead assigns any Slimefun item NBT tags that tell the plugin what item the player is actually holding. This is significantly quicker and reduced all these comparisons to just one simple lookup operation.

However as we do not want to break any old items without these NBT tags, the system will still fallback to the old one in order to preserve compatibility with older items.

If you are confident that you have no Items which were crafted before summer 2019, you can disable this fallback and use the new system exclusively.

This will improve your Server's performance significantly.

But be aware that any items crafted before summer 2019 might break when doing so.

You can optimize your Server with this method by setting `backwards-compatibility` to `false` in your `plugins/Slimefun/config.yml`.

```yaml
options:
  backwards-compatibility: false
```

## 5. Slower Tick-rates

Many Slimefun blocks execute code on a very regular basis, the default for this setting is set to run these tasks every 12 ticks (20 ticks = 1 second).

You can increase this delay to slow down block-ticks which *might* help your server's performance. However you shouldn't set it too high, otherwise your players might complain about their machines running too slow.

You can configure this setting in your `plugins/Slimefun/config.yml`. We recommend to only make small changes to the default value of 12 ticks when necessary.

```yaml
URID:
  custom-ticker-delay: 12
```

Similar to this setting, Slimefun regularly checks Player's armor to apply effects that come with wearing specific sets of armor. The default setting for this task is set to 10 ticks (20 ticks = 1 second).

You can also change this value when necessary.

```yaml
options:
  armor-update-interval: 10
```

## 6. Handling Cargo networks

Cargo networks are known to cause some performance drops depending on how they are set up.

They have gone through many optimizations over the years but they can still cause a bit of trouble from time to time.

With the merge of [Pull Request #2106](https://github.com/Slimefun/Slimefun4/pull/2106) Cargo networks have been drastically optimized to run best when using [Paper](https://papermc.io/). You can find more info about Server Software in section [2. Choosing the right Server Software](#2-choosing-the-right-server-software).

Here are two ways how you can limit cargo networks to prevent your players from making large networks that hurt your server's performance.

### a) Setting a maxmimum network size

You can set a maximum network size for cargo- and energy networks in your `plugins/Slimefun/config.yml`.

The default of 200 possible network members is very generous to players, decreasing this threshold will improve performance.

Note that this limit corresponds to the amount of steps taken by the pathfinding algorithm that looks up possible network members, it does not correspond to the actual amount of nodes in your network!

```yaml
networks:
  max-size: 200
```

### b) Setting a cargo delay

Normally, cargo networks are treated like any other ticking block (see [Step 4](#4-slower-tick-rates)).

But you can also make cargo managers run slower than other blocks. This delay will make the cargo network skip the amount of ticks specified, a delay of 0 will make cargo networks tick on every run. A delay of 1 will make networks only tick on every second run. A delay of 2 will make it skip 2 runs before it runs again, so it runs on every third run. And so on...

As this setting is multiplied by the tick-rate mentioned earlier, setting this too high can be a big disruption to your player's experience.

We recommend setting it to 1 and only increase it when absolutely needed.

```yaml
networks:
  cargo-ticker-delay: 1
```

## 7. Enabling Automatic updates

Lastly, one of the most effective ways to optimize your performance is to keep automatic Slimefun updates enabled at all times!

We regularly release patches, fixes and small performance optimizations and the plugin gets better (content- and performance-wise) with every newly released build. You should always use the latest version, so we highly recommend you to enable `auto-updates` in your `plugins/Slimefun/config.yml`.

```yaml
options:
  auto-update: true
```
