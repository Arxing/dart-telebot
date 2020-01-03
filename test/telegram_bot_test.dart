import 'package:telegram_bot/telegram_bot.dart';
import 'package:test/test.dart';

void main() async {
  var token = '';
  TelegramBotClient client;

  setUp(() {
    client = TelegramBotClient(token, debugMode: true);
  });

  test('getUpdates', () async {
    await client.getUpdates().then(dataWatcher).catchError(errorWatcher);
  });

  test('getMe', ()async{
    await client.getMe().then(dataWatcher).catchError(errorWatcher);
  });

  test('sendMessage', ()async{
    var chatId = '433095941';
    var text = 'hello';
    await client.sendMessage(chatId: chatId, text: text).then(dataWatcher).catchError(errorWatcher);
  });
}

void dataWatcher(data) {
  if (data is List) {
    print('---> data(List)\n$data\n\n');
  } else {
    print('---> data\n${data.toJson()}\n\n');
  }
}

void errorWatcher(e, stack) {
  print(e);
  print(stack);
}
