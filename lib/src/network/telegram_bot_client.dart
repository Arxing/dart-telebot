import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:meta/meta.dart';
import 'package:telegram_bot/telegram_bot.dart';

part 'telegram_bot_client.g.dart';

@RestApi()
abstract class TelegramBotClient {
  factory TelegramBotClient(
    String botToken, {
    bool debugMode = false,
  }) =>
      _TelegramBotClient(_buildDio(botToken, debugMode));

  static Dio _buildDio(String botToken, bool debugMode) {
    var dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.telegram.org/bot$botToken/',
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
    dio.interceptors.add(InterceptorsWrapper(onResponse: (response) {
      if (debugMode) {
        print('---> ${response.request.path} response:\n${response.data}\n\n');
      }
      return response.data['result'];
    }));
    return dio;
  }

  ///***********************************************************************************************************///

  @GET('/getUpdates')
  Future<List<Update>> getUpdates({
    @Query('offset') int offset,
    @Query('limit') int limit,
    @Query('timeout') int timeout,
    @Query('allowed_updates') List<String> allowed_updates,
  });

  @POST('/setWebhook')
  Future<Update> setWebhook({
    @Field('url') String url,
    @Field('certificate', 'certificate') File certificate,
    @Field('max_connections') int max_connections,
    @Field('allowed_updates') List<String> allowed_updates,
  });

  @GET('/deleteWebhook')
  Future<bool> deleteWebhook();

  @GET('/getWebhookInfo')
  Future<bool> getWebhookInfo();

  @GET('/getMe')
  Future<User> getMe();

  @GET('/sendMessage')
  Future<Message> sendMessage({
    @required @Query('chat_id') String chatId,
    @required @Query('text') String text,
    @Query('parse_mode') String parseMode,
    @Query('disable_web_page_preview') bool disableWebPagePreview,
    @Query('disable_notification') bool disableNotification,
    @Query('reply_to_message_id') int replyToMessageId,
    @Query('reply_markup') dynamic replyMarkup,
  });
}
