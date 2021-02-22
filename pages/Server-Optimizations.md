<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<details>
<summary>目錄</summary>

- [1. 時刻關注效能狀態](#1-%E6%99%82%E5%88%BB%E9%97%9C%E6%B3%A8%E6%95%88%E8%83%BD%E7%8B%80%E6%85%8B)
- [2. 選擇合適的伺服器軟體](#2-%E9%81%B8%E6%93%87%E5%90%88%E9%81%A9%E7%9A%84%E4%BC%BA%E6%9C%8D%E5%99%A8%E8%BB%9F%E9%AB%94)
- [3. 避免 /reload](#3-%E9%81%BF%E5%85%8D-reload)
- [4. 關閉向後兼容](#4-%E9%97%9C%E9%96%89%E5%90%91%E5%BE%8C%E5%85%BC%E5%AE%B9)
- [5. Slower Tick-rates](#5-slower-tick-rates)
- [6. Handling Cargo networks](#6-handling-cargo-networks)
- [7. 啟用自動更新](#7-%E5%95%9F%E7%94%A8%E8%87%AA%E5%8B%95%E6%9B%B4%E6%96%B0)

</details>
<!-- END doctoc generated TOC please keep comment here to allow auto update -->

黏液科技是一個非常大的插件, 因此總是對其性能產生疑問.<br>
此插件自2013年以來就一直存在, 並多年來進行許多更改與優化. 但根據您使用此插件的方式, 效能可能會有所不同.

本文章幫助你發現瓶頸和局限性, 並指道你優化伺服器和Slimefun設定, 以使其盡可能的運行.<br>
以下是有關如何優化或Slimefun設定的一些重要提示:

## 1. 時刻關注效能狀態
伺服器優化最重要的是資訊.<br>
你需要知道要尋找甚麼才能提高性能, 因此這裡是你應該熟悉的一些非常重要的工具:

### a) 伺服器分析 (/timings)
Spigot 和 Paper 都已經帶有自己的分析. 你可以透過聊天室執行 `/timings` 來訪問此分析.
這些事件分析器可以深入聊解你的伺服器所面臨的問題, 甚至可以將其分解為你所使用的各個插件, 和這些插件的特定執行任務.

**注意:** 理解 timings-report 可能是一項艱難的任務.
請參閱此 [Spigotmc.org 上的Wiki文章](https://www.spigotmc.org/wiki/timings/), 以獲得有關於timings的工作原理.

但請記住, 並非這些報告中的每個數字都很重要, 特別是"startup-tasks"在不影響性能的狀況下可能會顯示為紅色, 因為它們僅在伺服器啟動過程中運行.

### b) Slimefun Profiling (/sf timings)
Slimefun also provides its own profiling tool which allows you to find sources of lag.<br>
By running `/sf timings` you get an overview of what chunks, what machines or even what addon has a high impact on performance.
Try it out and get yourself familiar!
You will surely see some differences between the different content in Slimefun and any addons.

### c) Plugin-based Server Profiling
In addition to your standard timings-tool, there are also some third-party tools which can help you and developers to track down where the lag is coming from code-wise.
We personally recommend [:zap: Spark by @Luck](https://www.spigotmc.org/resources/spark.57242/).
Reports from Spark have helped us tackle a few optimization problems and identify bottlenecks already, so it seems like a very useful asset for both, server owners and developers.

## 2. 選擇合適的伺服器軟體
Choosing the right Server Software plays an important role in Server-optimization.<br>
Since the discontinuation of CraftBukkit, [Spigot](https://www.spigotmc.org/) has become the standard Server software.
But there are countless alternatives and forks to choose from.
[Paper](https://papermc.io/) for example is a fork of Spigot and has proven itself to have slightly better performance than Spigot and also provides better and more detailed timings-reports.<br>
**Cargo networks** from Slimefun have been optimized to work best when using [Paper](https://papermc.io/).<br>
But there are countless other forks of Bukkit/Spigot out there which claim to also improve performance.
We suggest you to look into this yourself and make your own choice.

If you have control over your Server's Java version, try to choose the latest possible version of Java.

Once you have chosen a Server Software that you think is right for you, you should probably also dedicate some time to configuring this software.<br>
There have been many external guides on how to do that, so we will just link some of them here (*They are better at this than we are*):
* [Reducing Lag - A basic guide](https://www.spigotmc.org/wiki/reducing-lag/) (SpigotMC Wiki)
* [Server Optimization Guide](https://www.spigotmc.org/threads/guide-server-optimization%E2%9A%A1.283181/) (Posted by @Celbrimbor on the SpigotMC Forums)
* [Optimizing Java Garbage Collection](https://aikar.co/2018/07/02/tuning-the-jvm-g1gc-garbage-collector-flags-for-minecraft/) (@aikar's personal blog)

## 3. 避免 /reload
**永遠不要使用 `/reload`.**<br>
每當你添加了新的插件或編輯的設定文件時, 請重新啟動伺服器. 使用 `/reload` 將會導致巨大的 [記憶體洩漏](https://en.wikipedia.org/wiki/Memory_leak), 對伺服器的性能產生負面影響. `/reload` 並不是安全使用, 應不惜一切代價避免使用.

許多插件並不意味著要處理重新加載, Slimefun是其中之一, 你應該始終重啟你的伺服器.

## 4. 關閉向後兼容
Slimefun has been around for a long time and there have been many Servers who use it since years.<br>
Any Server that has used Slimefun **before summer 2019** will have a bunch of old Slimefun Items. 
These items are likely to still use an old Item format which is slow and inefficient.
The old format relied on lengthy Item comparisons and lookups. 
Everytime a player clicks with an Item in their hand, Slimefun has to compare this item with every Slimefun item in existence, including any items from addons.
This is a relatively quick operation but the time increases with the amount of addons and the amount of players on your server.

The new item format instead assigns any Slimefun item NBT tags that tell the plugin what item the player is actually holding.
This is significantly quicker and reduced all these comparisons to just one simple lookup operation.<br>
However as we do not want to break any old items without these NBT tags, the system will still fallback to the old one in order to preserve compatibility with older items.

If you are confident that you have no Items which were crafted before summer 2019, you can disable this fallback and use the new system exclusively.<br>
This will improve your Server's performance significantly.<br>
But be aware that any items crafted before summer 2019 might break when doing so.

You can optimize your Server with this method by setting `backwards-compatibility` to `false` in your `plugins/Slimefun/config.yml`.
```yaml
options:
  backwards-compatibility: false
```

## 5. Slower Tick-rates
Many Slimefun blocks execute code on a very regular basis, the default for this setting is set to run these tasks every 12 ticks (20 ticks = 1 second).<br>
You can increase this delay to slow down block-ticks which *might* help your server's performance. 
However you shouldn't set it too high, otherwise your players might complain about their machines running too slow.

You can configure this setting in your `plugins/Slimefun/config.yml`. We recommend to only make small changes to the default value of 12 ticks when necessary.
```yaml
URID:
  custom-ticker-delay: 12
```

Similar to this setting, Slimefun regularly checks Player's armor to apply effects that come with wearing specific sets of armor.
The default setting for this task is set to 10 ticks (20 ticks = 1 second).<br>
You can also change this value when necessary.
```yaml
options:
  armor-update-interval: 10
```

## 6. Handling Cargo networks
Cargo networks are known to cause some performance drops depending on how they are set up.<br>
They have gone through many optimizations over the years but they can still cause a bit of trouble from time to time.

With the merge of [Pull Request #2106](https://github.com/Slimefun/Slimefun4/pull/2106) Cargo networks have been drastically optimized to run best when using [Paper](https://papermc.io/). You can find more info about Server Software in section [2. Choosing the right Server Software](#2-choosing-the-right-server-software).

Here are two ways how you can limit cargo networks to prevent your players from making large networks that hurt your server's performance.

### a) Setting a maxmimum network size
You can set a maximum network size for cargo- and energy networks in your `plugins/Slimefun/config.yml`.<br>
The default of 200 possible network members is very generous to players, decreasing this threshold will improve performance.<br>
Note that this limit corresponds to the amount of steps taken by the pathfinding algorithm that looks up possible network members, it does not correspond to the actual amount of nodes in your network!
```yaml
networks:
  max-size: 200
```

### b) Setting a cargo delay
Normally, cargo networks are treated like any other ticking block (see [Step 4](#4-slower-tick-rates)).<br>
But you can also make cargo managers run slower than other blocks.
This delay will make the cargo network skip the amount of ticks specified, a delay of 0 will make cargo networks tick on every run. 
A delay of 1 will make networks only tick on every second run. A delay of 2 will make it skip 2 runs before it runs again, so it runs on every third run. And so on...

As this setting is multiplied by the tick-rate mentioned earlier, setting this too high can be a big disruption to your player's experience.<br>
We recommend setting it to 1 and only increase it when absolutely needed.
```yaml
networks:
  cargo-ticker-delay: 1
```

## 7. 啟用自動更新
最後, 最能優化效能的方法是始終保持啟用自動Slimefun更新!<br>
我們會定期發布補丁, 修復與小的性能優化, 並且每個新發布版本都會使插件變得更好. (內容與性能方面)
您應該始終使用最新版本, 因此我們強烈建議您在`plugins/Slimefun/config.yml` 內啟用 `auto-updates`.
不過 因為**非官方**繁體版沒有自動更新, 所以必須手動更新! 還是強烈建議定期更新最新版.
```yaml
options:
  auto-update: true
```
