# telebot

[中文版](https://github.com/Arxing/dart-telebot/blob/master/README-tw.md)

`telebot` is a `Telegram Bot API` implementation for `Dart`, you can use this library
to execute `Telegram Bot API` by easy ways, see `Telegram Bot API` in [Telegram Bot Document](https://core.telegram.org/bots/api).

[![Dart Version](https://img.shields.io/badge/Dart-2.7-blue.svg?style=flat-square)](https://dart.dev)
[![Pub](https://img.shields.io/badge/Pub-telebot-green.svg?style=flat-square)](https://pub.dev/packages/telebot)

## Install

```yaml
dependencies:
  telebot: ^1.0.0
```

### Imports

```dart
import 'package:telebot/telebot.dart';
```

## How to Create A Bot ?

See [here](https://core.telegram.org/bots) or follow steps below

### Step 1. Add BotFather as Contact
All Telegram Bot's action is by talking with BotFather to complete, so you need to browse
[https://t.me/botfather](https://t.me/botfather) to add BotFather as contact 

### Step 2. Talk with BotFather and Execute Command
Open Telegram and find BotFather, then send any message to him, he will tell you all what can he do

### Step 3. Create A New Bot
Send `/newbot` to him and follow the steps, final you will create a bot

### Step 4. Get API Token of Bot
Send `/mybots` to him then choose your bot, then choose option `API Token`, final you will get token 



## How to Use telebot ?

### Create Bot

```dart
var bot = TelegramBot.init("BOT_TOKEN");
```

### Send Message

```dart
var bot = TelegramBot.init("BOT_TOKEN");
bot.sendMessage(chateId: "CHAT_ID", text: "Hello World").then((Message messageResult){
  // got result  
}).catchError((error){
  // handle error
});
```

or use `async/await`

```dart
var bot = TelegramBot("BOT_TOKEN");
Message messageResult = await bot.sendMessage(chateId: "CHAT_ID", text: "Hello World");
```

### Other APIs

All `Telegram Bot API` was implemented in `telebot`, see [Telegram Bot Document](https://core.telegram.org/bots/api).

### Objects Field

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

### InputFile or String Field

Now `telebot` only support `String` url. 

### Run with Webhook

#### Step 1. Initialize TelegramBot

```dart
var bot = TelegramBot.init(BOT_TOKEN);
```

#### Step 2. Listen Events
```dart
bot.onMessage((message)){
  if(message.from.isBot) return;
  message.reply("Hello! I'm a bot.");
}.onEditedMessage((message){
  // do something
});
```

`TelegramBot` supported events

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

#### Step 3. Start Bot Server
```dart
bot.startServer(host: "YOUR SERVER HOST", port: SERVER_PORT);
```

### Run Example

1. Clone this project 
    ```cmd
    git clone https://github.com/Arxing/dart-telebot.git
    ```
2. Edit `example/env.dart` and input `BOT_TOKEN`, `SERVER_PORT` and `WEBHOOK_URL`
3. Run `example/update_webhook.dart` to set bot's webhook url
    ```cmd
    dart ./example/update_webhook.dart
    ``` 
4. Run `example/start_bot_server.dart` to start listening
    ```cmd
    dart ./example/start_bot_server.dart
    ```
5. Now talk to your bot in Telegram, then it will reply you same message!
