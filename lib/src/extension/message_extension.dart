import 'package:telebot/telebot.dart';
import 'package:useful_extension/useful_extension.dart';

extension $MessageExtension on Message {
  int get _chatId => this.chat.id;

  int get _messageId => this.messageId;

  Future<void> reply(void Function(TelegramBot, int, int) callback) {
    callback.invoke(TelegramBot.instance, _chatId, _messageId);
  }

  Future<Message> replyText(
    String text, {
    String parseMode,
    bool markSender = false,
  }) {
    return TelegramBot.instance.sendMessage(
      chatId: _chatId,
      replyToMessageId: markSender ? _messageId : null,
      parseMode: parseMode,
      text: text,
    );
  }

  Future<Message> replyPhoto(
    String photoUrl, {
    String parseMode,
    String photoTitle,
    bool markSender = false,
  }) {
    return TelegramBot.instance.sendPhoto(
      chatId: _chatId,
      replyToMessageId: markSender ? _messageId : null,
      parseMode: parseMode,
      photo: photoUrl,
      caption: photoTitle,
    );
  }

  Future<Message> editTo(String text) {
    return TelegramBot.instance.editMessageText(
      chatId: _chatId,
      text: text,
      messageId: _messageId,
    );
  }
}
