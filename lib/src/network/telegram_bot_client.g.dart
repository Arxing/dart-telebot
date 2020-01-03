// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_bot_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TelegramBotClient implements TelegramBotClient {
  _TelegramBotClient(this._dio) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  @override
  getUpdates({offset, limit, timeout, allowed_updates}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'timeout': timeout,
      'allowed_updates': allowed_updates
    };
    const _data = null;
    final _result = await _dio.request('/getUpdates',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'GET', headers: {}, extra: _extra),
        data: _data);
    var value = (_result.data as List).map((i) => Update.fromJson(i)).toList();
    return Future.value(value);
  }

  @override
  setWebhook({url, certificate, max_connections, allowed_updates}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = FormData.from({
      'url': url,
      'certificate': UploadFileInfo(certificate, 'certificate'),
      'max_connections': max_connections,
      'allowed_updates': allowed_updates
    });
    final _result = await _dio.request('/setWebhook',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'POST', headers: {}, extra: _extra),
        data: _data);
    var value = Update.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  deleteWebhook() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    const _data = null;
    final _result = await _dio.request('/deleteWebhook',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'GET', headers: {}, extra: _extra),
        data: _data);
    var value = _result.data;
    return Future.value(value);
  }

  @override
  getWebhookInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    const _data = null;
    final _result = await _dio.request('/getWebhookInfo',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'GET', headers: {}, extra: _extra),
        data: _data);
    var value = _result.data;
    return Future.value(value);
  }

  @override
  getMe() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    const _data = null;
    final _result = await _dio.request('/getMe',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'GET', headers: {}, extra: _extra),
        data: _data);
    var value = User.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  sendMessage(
      {chatId,
      text,
      parseMode,
      disableWebPagePreview,
      disableNotification,
      replyToMessageId,
      replyMarkup}) async {
    ArgumentError.checkNotNull(chatId, 'chatId');
    ArgumentError.checkNotNull(text, 'text');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'chat_id': chatId,
      'text': text,
      'parse_mode': parseMode,
      'disable_web_page_preview': disableWebPagePreview,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };
    const _data = null;
    final _result = await _dio.request('/sendMessage',
        queryParameters: queryParameters,
        options: RequestOptions(method: 'GET', headers: {}, extra: _extra),
        data: _data);
    var value = Message.fromJson(_result.data);
    return Future.value(value);
  }
}
