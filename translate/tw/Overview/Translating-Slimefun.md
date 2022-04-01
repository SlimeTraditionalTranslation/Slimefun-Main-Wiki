---
title: 翻譯黏液科技
sidebar_position: 7
---

由於多年前的錯誤設計選擇與代碼製作, 翻譯黏液科技一直都是一項難題.

但截至 2020 年 2 月, 所有版本的建構帶有了翻譯功能.

**重要提示: 你目前只能翻譯聊天室所傳出的訊息和某些箱子介面, 但不能翻譯物品. 物品翻譯是非常難實現, 且可能仍需要一年甚至更長時間才能完成. 請耐心等待! 並不要要求我們物品的翻譯. 感謝你.**

## 更改你的伺服器語言

你可以透過修改 config.yml 來改變伺服器預設語言:

```yaml
options:
  language: en
```

將 `en` 轉換為你所需要的語言代碼. 你可以在此頁面下方找到所有受支持的語言列表.

請注意, 這將會覆蓋你的 `messages.yml` 檔案. 如果你希望在選擇的語言下自定義你的訊息, 只需在 `messages.yml` **後** 改變你的語言並重啟你的伺服器. 你的 `messages.yml` 只有在你決定要修改伺服器預設語言時. Messages.yml 的新增內容將會毫無問題的添加到該文件中.

## 更給你的個人語言

每個玩家都可以選擇他們喜歡的語言. 在預設情況下, 每個人都會用伺服器預設語言.

但如果你有很多國際玩家, 他們可以簡單的覆蓋成他們個人使用的語言.

要做這點, 只要在 Slimefun 指南 (蹲下右鍵當你拿在手上) 內的 "設定" 部份. 在那邊你可以看到一個地球或者旗幟, 可以讓你選擇並變換你的語言.

## 可用的語言

請注意只有標記為 **發布**的語言才能在伺服器上安全的選擇.

未發布的語言仍然在等待審核或尚未完全翻譯.

開發版 Slimefun 可能已經包含一些尚未發布的語言.

**請別選擇尚未發布的語言做為你的伺服器預設語言.**

歡迎貢獻翻譯!

| 發布                   | 語言                                                     | 語言代碼    |
| -------------------- | ------------------------------------------------------ | ------- |
| :heavy_check_mark: | 英語                                                     | `en`    |
| :heavy_check_mark: | [德語](https://crowdin.com/project/slimefun/de)          | `de`    |
| :heavy_check_mark: | [法語](https://crowdin.com/project/slimefun/fr)          | `fr`    |
| :heavy_check_mark: | [意大利語](https://crowdin.com/project/slimefun/it)        | `it`    |
| :heavy_check_mark: | [西班牙語](https://crowdin.com/project/slimefun/es)        | `es`    |
| :x:                  | [波蘭語](https://crowdin.com/project/slimefun/pl)         | `pl`    |
| :heavy_check_mark: | [瑞典語](https://crowdin.com/project/slimefun/sv)         | `sv`    |
| :x:                  | [荷蘭語](https://crowdin.com/project/slimefun/nl)         | `nl`    |
| :heavy_check_mark: | [俄語](https://crowdin.com/project/slimefun/ru)          | `ru`    |
| :heavy_check_mark: | [匈牙利語](https://crowdin.com/project/slimefun/hu)        | `hu`    |
| :x:                  | [希臘語](https://crowdin.com/project/slimefun/el)         | `el`    |
| :heavy_check_mark: | [捷克語](https://crowdin.com/project/slimefun/cs)         | `cs`    |
| :x:                  | [拉脫維亞語](https://crowdin.com/project/slimefun/lv)       | `lv`    |
| :heavy_check_mark: | [斯洛伐克語](https://crowdin.com/project/slimefun/sk)       | `sk`    |
| :heavy_check_mark: | [中文（中國）](https://crowdin.com/project/slimefun/zh-CN)   | `zh-CN` |
| :heavy_check_mark: | [中文（台灣）](https://crowdin.com/project/slimefun/zh-TW)   | `zh-TW` |
| :x:                  | [葡萄牙語（葡萄牙）](https://crowdin.com/project/slimefun/pt)   | `pt`    |
| :heavy_check_mark: | [葡萄牙語（巴西）](https://crowdin.com/project/slimefun/pt-BR) | `pt-BR` |
| :heavy_check_mark: | [越南語](https://crowdin.com/project/slimefun/vi)         | `vi`    |
| :heavy_check_mark: | [印度尼西亞語](https://crowdin.com/project/slimefun/id)      | `id`    |
| :x:                  | [希伯來語](https://crowdin.com/project/slimefun/he)        | `he`    |
| :heavy_check_mark: | [阿拉伯語](https://crowdin.com/project/slimefun/ar)        | `ar`    |
| :x:                  | [丹麥語](https://crowdin.com/project/slimefun/da)         | `da`    |
| :x:                  | [芬蘭語](https://crowdin.com/project/slimefun/fi)         | `fi`    |
| :x:                  | [挪威語](https://crowdin.com/project/slimefun/no)         | `no`    |
| :heavy_check_mark: | [烏克蘭語](https://crowdin.com/project/slimefun/uk)        | `uk`    |
| :x:                  | [南非語](https://crowdin.com/project/slimefun/af)         | `af`    |
| :x:                  | [馬來語](https://crowdin.com/project/slimefun/ms)         | `ms`    |
| :heavy_check_mark: | [日語](https://crowdin.com/project/slimefun/ja)          | `ja`    |
| :x:                  | [波斯語](https://crowdin.com/project/slimefun/fa)         | `fa`    |
| :heavy_check_mark: | [泰語](https://crowdin.com/project/slimefun/th)          | `th`    |
| :heavy_check_mark: | [他加祿語](https://crowdin.com/project/slimefun/tl)        | `tl`    |
| :x:                  | [羅馬尼亞語](https://crowdin.com/project/slimefun/ro)       | `ro`    |
| :x:                  | [保加利亞語](https://crowdin.com/project/slimefun/bg)       | `bg`    |
| :heavy_check_mark: | [土耳其語](https://crowdin.com/project/slimefun/tr)        | `tr`    |
| :heavy_check_mark: | [韓語](https://crowdin.com/project/slimefun/ko)          | `ko`    |
| :x:                  | [馬其頓語](https://crowdin.com/project/slimefun/mk)        | `mk`    |
| :x:                  | [克羅地亞語](https://crowdin.com/project/slimefun/hr)       | `hr`    |
| :x:                  | [白俄羅斯語](https://crowdin.com/project/slimefun/be)       | `be`    |

### 想要幫忙我們進行翻譯?

只要點擊你想翻譯的語言來幫助翻譯. 這將會帶你至 [Crowdin](https://crowdin.com/project/slimefun/), 託管此儲存庫的翻譯.

當你到達那裡時, 只需將所有訊息轉換成你的翻譯, 並在完成後點擊 "創建審核請求 (Create review request)".

然後我們會開始審核你的變動, 並將其添加至插件中.

### 沒有看到你所使用的語言?

如果我們目前不支持你的語言, 請訪問 Discord 官方伺服器.

然後將訊息發在 `#translations` (請使用英文) 並讓我們知道你想幫忙翻譯插件到你的語言, 但請不要 tag 任何我們的管理員, 我們仍會看到你的訊息. 請耐心等待, 處理你的請求可能需要一些時間.
