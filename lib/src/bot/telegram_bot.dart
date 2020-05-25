import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:telebot/src/bot/telegram_bot_client.dart';
import 'package:telebot/src/model/export.dart';
import 'package:useful_extension/useful_extension.dart';

typedef UpdateCallback = void Function(Update);

typedef MessageCallback = void Function(Message);

typedef TelegramCallback<T> = void Function(T);

class TelegramBot extends TelegramBotClientImpl {
  /// telegram bot's token
  final String token;

  /// singleton
  static TelegramBot _instance;

  // Define callbacks

  UpdateCallback _updateCallback;
  MessageCallback _messageCallback;
  MessageCallback _editedMessageCallback;
  MessageCallback _channelPostCallback;
  MessageCallback _editedChannelPostCallback;
  TelegramCallback<InlineQuery> _inlineQueryCallback;
  TelegramCallback<ChosenInlineResult> _chosenInlineResultCallback;
  TelegramCallback<CallbackQuery> _callbackQueryCallback;
  TelegramCallback<ShippingQuery> _shippingQueryCallback;
  TelegramCallback<PreCheckoutQuery> _preCheckoutQueryCallback;
  TelegramCallback<Poll> _pollCallback;
  TelegramCallback<PollAnswer> _pollAnswerCallback;

  TelegramBot._(this.token, Dio dio) : super(dio);

  factory TelegramBot._init(String token, {String proxy}) {
    var dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.telegram.org/bot$token/',
        headers: {'Content-Type': 'application/json'},
      ),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (request) {
            request.queryParameters?.removeWhere((key, value) => value == null);
            if (request.data == null) return request;
            if (request.data is Map) (request.data as Map).removeWhere((key, value) => value == null);
            return request;
          },
          onResponse: (response) => response.data['result'],
          onError: (error) {
            var responseData = error.response.data;
            return responseData;
          },
        ),
      );

    proxy?.let((it) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.findProxy = (uri) => "PROXY $it";
        client.badCertificateCallback = (cert, host, port) => true;
      };
    });
    return TelegramBot._(token, dio);
  }

  factory TelegramBot.init(String token, {String proxy}) {
    if (_instance == null) _instance = TelegramBot._init(token, proxy: proxy);
    return _instance;
  }

  static TelegramBot get instance => _instance;

  Future<HttpServer> startServer({String host = "localhost", int port}) async {
    var handler = shelf.Pipeline().addHandler(await _echoRequest);
    return io.serve(handler, host, port).then((server) {
      print("Serving at http://${server.address.host}:${server.port}");
      return server;
    });
  }

  /// Handle requests
  Future<shelf.Response> _echoRequest(shelf.Request request) async {
    try {
      String response = await request.readAsString(utf8);
      var json = jsonDecode(response);
      Update update = Update.fromJson(json);
      _updateCallback?.invoke(update);
      _dispatchEvent(update);
      return shelf.Response.ok("");
    } catch (error) {
      return shelf.Response.forbidden("Can not parse `Update`!!!");
    }
  }

  /// Dispatch events
  void _dispatchEvent(Update update) {
    var updateId = update.updateId;
    update.message?.let((it) => _messageCallback?.invoke(it));
    update.editedMessage?.let((it) => _editedMessageCallback?.invoke(it));
    update.channelPost?.let((it) => _channelPostCallback?.invoke(it));
    update.editedChannelPost?.let((it) => _editedChannelPostCallback?.invoke(it));
    update.inlineQuery?.let((it) => _inlineQueryCallback?.invoke(it));
    update.chosenInlineResult?.let((it) => _chosenInlineResultCallback?.invoke(it));
    update.callbackQuery?.let((it) => _callbackQueryCallback?.invoke(it));
    update.shippingQuery?.let((it) => _shippingQueryCallback?.invoke(it));
    update.preCheckoutQuery?.let((it) => _preCheckoutQueryCallback?.invoke(it));
    update.poll?.let((it) => _pollCallback?.invoke(it));
    update.pollAnswer?.let((it) => _pollAnswerCallback?.invoke(it));
  }

  TelegramBot onUpdate(UpdateCallback callback) => this.let((it) => it._updateCallback = callback);

  /// New incoming message of any kind — text, photo, sticker, etc.
  TelegramBot onMessage(MessageCallback callback) => this.let((it) => it._messageCallback = callback);

  /// New version of a message that is known to the bot and was edited
  TelegramBot onEditedMessage(MessageCallback callback) => this.let((it) => it._editedMessageCallback = callback);

  /// New incoming channel post of any kind — text, photo, sticker, etc.
  TelegramBot onChannelPost(MessageCallback callback) => this.let((it) => it._channelPostCallback = callback);

  /// New version of a channel post that is known to the bot and was edited
  TelegramBot onEditedChannelPost(MessageCallback callback) => this.let((it) => it._editedChannelPostCallback = callback);

  /// New incoming inline query
  TelegramBot onInlineQuery(TelegramCallback<InlineQuery> callback) => this.let((it) => it._inlineQueryCallback = callback);

  /// The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
  TelegramBot onChosenInlineResult(TelegramCallback<ChosenInlineResult> callback) =>
      this.let((it) => it._chosenInlineResultCallback = callback);

  /// New incoming callback query
  TelegramBot onCallbackQuery(TelegramCallback<CallbackQuery> callback) => this.let((it) => it._callbackQueryCallback = callback);

  /// New incoming shipping query. Only for invoices with flexible price
  TelegramBot onShippingQuery(TelegramCallback<ShippingQuery> callback) => this.let((it) => it._shippingQueryCallback = callback);

  /// New incoming pre-checkout query. Contains full information about checkout
  TelegramBot onPreCheckoutQuery(TelegramCallback<PreCheckoutQuery> callback) => this.let((it) => it._preCheckoutQueryCallback = callback);

  /// New poll state. Bots receive only updates about stopped polls and polls, which are sent by the bot
  TelegramBot onPoll(TelegramCallback<Poll> callback) => this.let((it) => it._pollCallback = callback);

  /// A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.
  TelegramBot onPollAnswer(TelegramCallback<PollAnswer> callback) => this.let((it) => it._pollAnswerCallback = callback);
}
