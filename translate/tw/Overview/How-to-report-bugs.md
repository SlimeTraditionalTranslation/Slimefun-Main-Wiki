---
title: 如何回報錯誤
sidebar_position: 5
---

回報錯誤對於這個開源專案至關重要。

所以請考慮在我們的 [ 問題跟踪器 ](https://github.com/Slimefun/Slimefun4/issues) 上報告錯誤

但在報告錯誤之前，你應該閱讀以下故障排除指南。

你遇到的許多問題都可以由你解決，為我們節省大量時間和精力。

## 故障排除指南

本指南旨在幫助你識別問題並告知 ** 你 ** 可以採取哪些措施來防止這些問題。

如果都沒有用，我們也會教你如何製作詳細和有效的錯誤報告，以便給你最好的幫助。

_另請參閱： [ 常見問題 ](Common-Issues.md)_

**但首先：**

永遠記住，黏液科技是開源和社區開發的。

但最重要的是：它是免費的...

所以 ** 請不要 ** 期望我們神奇地為你解決所有問題並 24/7 提供服務。

如果你真的喜歡這個插件，那麼請遵循這個指南，它會讓我們的生活更輕鬆，並幫助我們專注於重要問題。

這是你最起碼能做到並可以減輕我們的負擔的事。

### 1. 檢查你在使用的版本

檢查版本是 ** 絕對的關鍵 ** ，僅此步驟就可以解決 90％的問題。

收集下列資訊：

* ** 你的伺服器軟件 ** _（你正在運行 Bukkit、Spigot、Paper 還是其他軟件？）_
* ** 你的 Minecraft 版本 ** _（是 1.8，是 1.14，還是 1.9001？ 你應該知道的。）_
* ** 你的黏液科技版本 ** _（你安裝了什麼版本？ 它是 DEV 版本還是 “穩定” 版本？）_

你可以通過運行指令 `/sf versions` 快速收集所有這些信息。

如果你的伺服器管理員沒有授予你訪問此命令的權限，則 Shift 並右鍵單擊您的 Slimefun 指南，那裡應該有一本書籍和羽毛筆，至少可以告訴你你的 Minecraft 和黏液科技版本。 這已經很有幫助了！

如果你向我們報告錯誤，那麼我們將需要此信息，否則我們絕對沒有機會弄清楚需要處理的問題。

這就像在一堆乾草中發現一根釘子，但是這堆乾草著火了，並且與釘子在完全不同的星球上。

** 所以，請，拜託告訴我們你正在運行的確切版本，“最新” 沒有幫助 **。

### 2. 檢查有無更新

下一步是將你在第 1 步中獲得的版本與最新版本進行比較。

* **你的服務器軟件是最新的嗎？** _（檢查 Spigot、Paper、Bukkit 或你正在使用的任何東西是否有更新）_
* **黏液科技是最新的嗎？** _（你可以在下載頁面查看是否有比你的版本 [ 更新的版本 ](https://xmikux.github.io/builds/xMikux/Slimefun4/master/)）_
* ** 你使用的是 DEV 構建嗎？** _（穩定的構建非常 “穩定” 但並非無缺陷）_

補充最後一點：我們不會接受來自 “穩定” 版本的錯誤報告，請切換到更高版本的開發版本，然後先查看你的問題是否仍然存在。

如果你沒有對服務器的文件訪問權限，請聯繫你的一位管理員，向他們解釋你的問題並將他們鏈接到本指南。

### 3. 嘗試重開你的伺服器

這不是一個玩笑。 嘗試將其關閉再打開，通常它可以正常運作並解決你的問題。

### 4. 看看是不是已知問題

看看我們的 [ 問題跟踪器 ](https://github.com/Slimefun/Slimefun4/issues)。

可能你的問題已經被回報過了，這種情況下請不要再回報。 但我們鼓勵你對該問題發表評論，並提供一些有關你如何重現該問題的信息。

### 5. 搜索錯誤報告和堆棧跟踪

Before you venture off and hunt down those error-reports and stacktraces, keep in mind that those things should always be posted via [pastebin](https://pastebin.com/) when reporting via our Issue Tracker.

1. Navigate to the directory `/plugins/Slimefun/error-reports/` and check if any error-reports have been generated there.

   Please post them along with your issue if they correlate with the problem.

2. Open your server's console and check if you can see any stacktraces.

(Stacktraces are those things that look really scary and you cannot wrap your mind around how to read them) See if the phrase "slimefun" comes up in it. Attach it to your bug report then.

**It is very important to always post the FULL stacktrace, snip off one single word and it all becomes useless, so please make sure to include everything you see.**

Note that stacktraces that contain "slimefun" in them or even outright say they are caused by Slimefun, they maybe aren't.

If the name of one of your installed addons comes up in that stacktrace, post it on that addon's bug tracker instead.

如果你沒有對服務器的文件訪問權限，請聯繫你的一位管理員，向他們解釋你的問題並將他們鏈接到本指南。

### 6. Make sure it is Slimefun!

When you encounter problems with content in Slimefun, then please make sure that the Item/Block/Machine is actually from Slimefun and not from an addon.

If your problem revolves around items from ExoticGarden or any other Slimefun addons, then report them on their bug tracker and not here.

### 7. Gather as much information as possible

When we say you should be detailed, we mean it.

Try to experiment out some things before reporting.

* Is only that item affected or are other (similar) items broken as well?
* Does the bug only happen if you hold a certain item?
* Have you tried jumping, left- or right-clicking or dancing around?
* Does the issue require a creeper to be watching behind your back?
* Does it only happen on your server? **Have you tried talking to others on our discord server about it?**

These are just some more or less serious examples. Every bit of information helps.

The narrower and detailed you can get, the better.

### 8. Posting the Issue via GitHub

If updating or restarting did not help, then please report your issue via our [Issue Tracker](https://github.com/Slimefun/Slimefun4/issues/).

* We will need all the version information you gathered in Step 1.
* Please give a detailed description of the issue
* Give us very specific information on what you did when that issue occurred
* Explain what you **expected** to happen, a misunderstanding of what is supposed to happen could also be the root cause of the problem

We hope this little guide helps you make helpful and precise bug reports.

Thanks for making it this far!
