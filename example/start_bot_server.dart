import 'package:telebot/telebot.dart';
import 'package:useful_extension/useful_extension.dart';
import 'env.dart';

Future<void> main() async {
  var bot = TelegramBot.init(BOT_TOKEN);

  bot.onMessage((message) {
    if (message.from.isBot) return;
    var from = message.from;
    message.replyText("${from.firstName} ${from.lastName} said ${message.text}");
  }).onEditedMessage((message) {
    var from = message.from;
    message.replyText("${from.firstName} ${from.lastName} edited to ${message.text}");
  });

  await bot.startServer(host: BOT_SERVER_LOCAL_HOST, port: BOT_SERVER_LOCAL_PORT);
}
