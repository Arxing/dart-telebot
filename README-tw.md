# telebot

[English](https://github.com/Arxing/dart-telebot/blob/master/README.md)

`telebot`是一個實作了當前最新版`Telegram Bot API`的`Dart`庫，你可以使用這個庫來很輕易地執行所有動作，
詳細內容請參考[Telegram Bot 官方文件](https://core.telegram.org/bots/api)。

[![Dart Version](https://img.shields.io/badge/Dart-2.7-blue.svg?style=flat-square)](https://dart.dev)
[![Pub](https://img.shields.io/badge/Pub-telebot-green.svg?style=flat-square)](https://pub.dev/packages/telebot)

## 安裝

```yaml
dependencies:
  telebot: ^1.0.0
```

### 匯入

```dart
import 'package:telebot/telebot.dart';
```

## 如何創建機器人?

請參閱[官方文件](https://core.telegram.org/bots)或是依照以下步驟

### 步驟1. 新增機器人爸爸為聯絡人
所有關於Telegram機器人的操作都是與機器人爸爸對話來完成，可以想像機器人爸爸就像是後台一樣，
所以請訪問[https://t.me/botfather](https://t.me/botfather)並將機器人爸爸新增為聯絡人。

### 步驟2. 與機器人爸爸對話
請打開你的Telegram並找到機器人爸爸(BotFather)，然後傳送任何訊息給他，他會告訴你他可以做到什麼事。

### 步驟3. 創建一個機器人
傳送或點擊訊息`/newbot`給機器人爸爸，然後照著他的步驟設定機器人，最後你會成功建立一個機器人。

### 步驟4. 取得機器人的token
傳送或點擊訊息`/mybots`給機器人爸爸，他會告訴你你現在有哪些機器人，選擇你要取得token的機器人，並選擇`API Token`
然後你會得到這個機器人的token。

## 如何使用telebot?

### 建立一個機器人實例

```dart
var bot = TelegramBot.init("BOT_TOKEN");
```

### 發送訊息

```dart
var bot = TelegramBot.init("BOT_TOKEN");
bot.sendMessage(chateId: "CHAT_ID", text: "Hello World").then((Message messageResult){
  // got result  
}).catchError((error){
  // handle error
});
```

或是使用`async/await`關鍵字

```dart
var bot = TelegramBot("BOT_TOKEN");
Message messageResult = await bot.sendMessage(chateId: "CHAT_ID", text: "Hello World");
```

### 其他API
`telebot`已經實作了所有的`Telegram Bot API`，詳細內容請參考[Telegram機器人官方文檔](https://core.telegram.org/bots/api)。

### 物件型態欄位

```dart
var bot = TelegramBot("BOT_TOKEN");
await bot.sendMessage(
  chatId: "CHAT_ID",
  text: "Choose One!",
  replyMarkup: InlineKeyboardMarkup(
    inlineKeyboard: [
      [
        InlineKeyboardButton(text: "Apple", callbackData: "1000"),
        InlineKeyboardButton(text: "Banana", callbackData: "1001"),
      ]
    ],
  ),
);
```

### 檔案或是字串url的欄位

`telebot`現在只支援`String` url的模式，檔案的支援會在近期內完成

### Webhook

#### 步驟1. 初始化TelegramBot

```dart
var bot = TelegramBot.init(BOT_TOKEN);
```

#### 步驟2. 監聽事件
```dart
bot.onMessage((message)){
  if(message.from.isBot) return;
  message.reply("Hello! I'm a bot.");
}.onEditedMessage((message){
  // do something
});
```

`TelegramBot`目前支持的事件

| Event | Parameter |
| --- | --- |
| onUpdate | Update |
| onMessage | Message |
| onEditedMessage | Message |
| onChannelPost | Message |
| onEditedChannelPost | Message |
| onInlineQuery | InlineQuery |
| onChosenInlineResult | ChosenInlineResult |
| onCallbackQuery | CallbackQuery |
| onShippingQuery | ShippingQuery |
| onPreCheckoutQuery | PreCheckoutQuery |
| onPoll | Poll |
| onPollAnswer | PollAnswer |

#### 步驟3. 啟動伺服器
```dart
bot.startServer(host: "YOUR SERVER HOST", port: SERVER_PORT);
```

### 範例

1. Clone或下載此專案
    ```cmd
    git clone https://github.com/Arxing/dart-telebot.git
    ```
2. 編輯`example/env.dart`並輸入`BOT_TOKEN`、`SERVER_PORT`、`WEBHOOK_URL`等欄位
3. 執行檔案`example/update_webhook.dart`來設置webhook網址
    ```cmd
    dart ./example/update_webhook.dart
    ``` 
4. 執行檔案`example/start_bot_server.dart`來啟動機器人伺服器
    ```cmd
    dart ./example/start_bot_server.dart
    ```
5. 現在可以跟你的機器人對話了! 並且他會回覆你相同的訊息
