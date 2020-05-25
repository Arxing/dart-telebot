// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_bot_client.dart';

// **************************************************************************
// TridentGenerator
// **************************************************************************

class TelegramBotClientImpl extends TelegramBotClient {
  Dio _client;

  TelegramBotClientImpl([Dio dio]) {
    _client = dio ??
        Dio(
          BaseOptions(
            baseUrl: 'null',
            headers: {},
          ),
        );
  }

  Future<List<Update>> getUpdates(
      {int offset, int limit, int timeout, List<String> allowedUpdates}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'offset': offset,
      'limit': limit,
      'timeout': timeout,
      'allowed_updates': allowedUpdates
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getUpdates',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data
          .map((data) => Update.fromJson(data as Map<String, dynamic>))
          .toList();
    });
  }

  Future<bool> setWebhook(
      {String url,
      File certificate,
      int maxConnections,
      List<String> allowedUpdates}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'url': url,
      'certificate': certificate,
      'max_connections': maxConnections,
      'allowed_updates': allowedUpdates
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setWebhook',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> deleteWebhook() {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/deleteWebhook',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<WebhookInfo> getWebhookInfo() {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getWebhookInfo',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return WebhookInfo.fromJson(response.data);
    });
  }

  Future<User> getMe() {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getMe',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return User.fromJson(response.data);
    });
  }

  Future<Message> sendMessage(
      {dynamic chatId,
      String text,
      String parseMode,
      bool disableWebPagePreview,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'text': text,
      'parse_mode': parseMode,
      'disable_web_page_preview': disableWebPagePreview,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendMessage',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> forwardMessage(
      {dynamic chatId,
      dynamic fromChatId,
      bool disableNotification,
      int messageId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'from_chat_id': fromChatId,
      'disable_notification': disableNotification,
      'message_id': messageId
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/forwardMessage',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendPhoto(
      {dynamic chatId,
      String photo,
      String caption,
      String parseMode,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{};

    _queries.removeWhere((k, v) => v == null);

    final _data = {
      'chat_id': jsonEncode(chatId),
      'photo': photo,
      'caption': caption,
      'parse_mode': parseMode,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': jsonEncode(replyMarkup)
    };

    return _client
        .request(
      '/sendPhoto',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'POST',
        headers: _headers,
        contentType: 'application/x-www-form-urlencoded',
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendAudio(
      {dynamic chatId,
      String audio,
      String caption,
      String parseMode,
      int duration,
      String performer,
      String title,
      String thumb,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'audio': audio,
      'caption': caption,
      'parse_mode': parseMode,
      'duration': duration,
      'performer': performer,
      'title': title,
      'thumb': thumb,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendAudio',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendDocument(
      {dynamic chatId,
      String document,
      String thumb,
      String caption,
      String parseMode,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'document': document,
      'thumb': thumb,
      'caption': caption,
      'parse_mode': parseMode,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendDocument',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendVideo(
      {dynamic chatId,
      String video,
      int duration,
      int width,
      int height,
      String thumb,
      String caption,
      String parseMode,
      bool supportsStreaming,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'video': video,
      'duration': duration,
      'width': width,
      'height': height,
      'thumb': thumb,
      'caption': caption,
      'parse_mode': parseMode,
      'supports_streaming': supportsStreaming,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendVideo',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendAnimation(
      {dynamic chatId,
      String animation,
      int duration,
      int width,
      int height,
      String thumb,
      String caption,
      String parseMode,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'animation': animation,
      'duration': duration,
      'width': width,
      'height': height,
      'thumb': thumb,
      'caption': caption,
      'parse_mode': parseMode,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendAnimation',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendVoice(
      {dynamic chatId,
      String voice,
      String caption,
      String parseMode,
      int duration,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'voice': voice,
      'caption': caption,
      'parse_mode': parseMode,
      'duration': duration,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendVoice',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendVideoNote(
      {dynamic chatId,
      String videoNote,
      int duration,
      int length,
      String thumb,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'video_note': videoNote,
      'duration': duration,
      'length': length,
      'thumb': thumb,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendVideoNote',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendMediaGroup(
      {dynamic chatId,
      List<dynamic> media,
      bool disableNotification,
      int replyToMessageId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'media': media,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendMediaGroup',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendLocation(
      {dynamic chatId,
      double latitude,
      double longitude,
      int livePeriod,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'latitude': latitude,
      'longitude': longitude,
      'live_period': livePeriod,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendLocation',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> editMessageLiveLocation(
      {dynamic chatId,
      int messageId,
      String inlineMessageId,
      double latitude,
      double longitude,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId,
      'latitude': latitude,
      'longitude': longitude,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/editMessageLiveLocation',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> stopMessageLiveLocation(
      {dynamic chatId,
      int messageId,
      String inlineMessageId,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/stopMessageLiveLocation',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendVenue(
      {dynamic chatId,
      double latitude,
      double longitude,
      String title,
      String address,
      String foursquareId,
      String foursquareType,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendVenue',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendContact(
      {dynamic chatId,
      String phoneNumber,
      String firstName,
      String lastName,
      String vcard,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'vcard': vcard,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendContact',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> sendPoll(
      {dynamic chatId,
      String question,
      List<String> options,
      bool isAnonymous,
      String type,
      bool allowsMultipleAnswers,
      int correctOptionId,
      bool isClosed,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'question': question,
      'options': options,
      'is_anonymous': isAnonymous,
      'type': type,
      'allows_multiple_answers': allowsMultipleAnswers,
      'correct_option_id': correctOptionId,
      'is_closed': isClosed,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendPoll',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<void> sendChatAction({dynamic chatId, String action}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId, 'action': action};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendChatAction',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return null;
    });
  }

  Future<UserProfilePhotos> getUserProfilePhotos(
      {int userId, int offset, int limit}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'user_id': userId,
      'offset': offset,
      'limit': limit
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getUserProfilePhotos',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return UserProfilePhotos.fromJson(response.data);
    });
  }

  Future<TelegramFile> getFile({String fileId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'file_id': fileId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getFile',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return TelegramFile.fromJson(response.data);
    });
  }

  Future<bool> kickChatMember({dynamic chatId, int userId, int untilDate}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'until_date': untilDate
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/kickChatMember',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> unbanChatMember({dynamic chatId, int userId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId, 'user_id': userId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/unbanChatMember',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> restrictChatMember(
      {dynamic chatId,
      int userId,
      ChatPermissions permissions,
      int untilDate}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'permissions': permissions,
      'until_date': untilDate
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/restrictChatMember',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> promoteChatMember(
      {dynamic chatId,
      int userId,
      bool canChangeInfo,
      bool canPostMessages,
      bool canEditMessages,
      bool canDeleteMessages,
      bool canInviteUsers,
      bool canRestrictMembers,
      bool canPinMessages,
      bool canPromoteMembers}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'can_change_info': canChangeInfo,
      'can_post_messages': canPostMessages,
      'can_edit_messages': canEditMessages,
      'can_delete_messages': canDeleteMessages,
      'can_invite_users': canInviteUsers,
      'can_restrict_members': canRestrictMembers,
      'can_pin_messages': canPinMessages,
      'can_promote_members': canPromoteMembers
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/promoteChatMember',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setChatAdministratorCustomTitle(
      {dynamic chatId, int userId, String customTitle}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'custom_title': customTitle
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setChatAdministratorCustomTitle',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setChatPermissions(
      {dynamic chatId, ChatPermissions permissions}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'permissions': permissions
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setChatPermissions',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<String> exportChatInviteLink({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/exportChatInviteLink',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setChatPhoto({dynamic chatId, File photo}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId, 'photo': photo};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setChatPhoto',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> deleteChatPhoto({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/deleteChatPhoto',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setChatTitle({dynamic chatId, String title}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId, 'title': title};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setChatTitle',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setChatDescription({dynamic chatId, String description}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'description': description
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setChatDescription',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> pinChatMessage(
      {dynamic chatId, int messageId, bool disableNotification}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'disable_notification': disableNotification
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/pinChatMessage',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> unpinChatMessage({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/unpinChatMessage',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> leaveChat({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/leaveChat',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<Chat> getChat({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getChat',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Chat.fromJson(response.data);
    });
  }

  Future<List<ChatMember>> getChatAdministrators({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getChatAdministrators',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data
          .map((data) => ChatMember.fromJson(data as Map<String, dynamic>))
          .toList();
    });
  }

  Future<int> getChatMembersCount({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getChatMembersCount',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<ChatMember> getChatMember({dynamic chatId, int userId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId, 'user_id': userId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getChatMember',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return ChatMember.fromJson(response.data);
    });
  }

  Future<bool> setChatStickerSet({dynamic chatId, String stickerSetName}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'sticker_set_name': stickerSetName
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setChatStickerSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> deleteChatStickerSet({dynamic chatId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'chat_id': chatId};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/deleteChatStickerSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> answerCallbackQuery(
      {String callbackQueryId,
      String text,
      bool showAlert,
      String url,
      int cacheTime}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'callback_query_id': callbackQueryId,
      'text': text,
      'show_alert': showAlert,
      'url': url,
      'cache_time': cacheTime
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/answerCallbackQuery',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<Message> editMessageText(
      {dynamic chatId,
      int messageId,
      String inlineMessageId,
      String text,
      String parseMode,
      bool disableWebPagePreview,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId,
      'text': text,
      'parse_mode': parseMode,
      'disable_web_page_preview': disableWebPagePreview,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/editMessageText',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> editMessageCaption(
      {dynamic chatId,
      int messageId,
      String inlineMessageId,
      String caption,
      String parseMode,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId,
      'caption': caption,
      'parse_mode': parseMode,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/editMessageCaption',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> editMessageMedia(
      {dynamic chatId,
      int messageId,
      String inlineMessageId,
      InputMedia media,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId,
      'media': media,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/editMessageMedia',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> editMessageReplyMarkup(
      {dynamic chatId,
      int messageId,
      String inlineMessageId,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/editMessageReplyMarkup',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Poll> stopPoll(
      {dynamic chatId, int messageId, InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/stopPoll',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Poll.fromJson(response.data);
    });
  }

  Future<bool> deleteMessage({dynamic chatId, int messageId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/deleteMessage',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<Message> sendSticker(
      {dynamic chatId,
      String sticker,
      bool disableNotification,
      int replyToMessageId,
      dynamic replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'sticker': sticker,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendSticker',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<StickerSet> getStickerSet({String name}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'name': name};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getStickerSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return StickerSet.fromJson(response.data);
    });
  }

  Future<TelegramFile> uploadStickerFile({int userId, File pngSticker}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'user_id': userId,
      'png_sticker': pngSticker
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/uploadStickerFile',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return TelegramFile.fromJson(response.data);
    });
  }

  Future<bool> createNewStickerSet(
      {int userId,
      String name,
      String title,
      String pngSticker,
      String emojis,
      bool containsMasks,
      MaskPosition maskPosition}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'user_id': userId,
      'name': name,
      'title': title,
      'png_sticker': pngSticker,
      'emojis': emojis,
      'contains_masks': containsMasks,
      'mask_position': maskPosition
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/createNewStickerSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> addStickerToSet(
      {int userId,
      String name,
      String pngSticker,
      String emojis,
      MaskPosition maskPosition}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'user_id': userId,
      'name': name,
      'png_sticker': pngSticker,
      'emojis': emojis,
      'mask_position': maskPosition
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/addStickerToSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setStickerPositionInSet({String sticker, int position}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'sticker': sticker,
      'position': position
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setStickerPositionInSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> deleteStickerFromSet({String sticker}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'sticker': sticker};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/deleteStickerFromSet',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> answerInlineQuery(
      {String inlineQueryId,
      List<InlineQueryResult> results,
      int cacheTime,
      bool isPersonal,
      String nextOffset,
      String switchPmText,
      String switchPmParameter}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'inline_query_id': inlineQueryId,
      'results': results,
      'cache_time': cacheTime,
      'is_personal': isPersonal,
      'next_offset': nextOffset,
      'switch_pm_text': switchPmText,
      'switch_pm_parameter': switchPmParameter
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/answerInlineQuery',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<Message> sendInvoice(
      {int chatId,
      String title,
      String description,
      String payload,
      String providerToken,
      String startParameter,
      String currency,
      List<LabeledPrice> prices,
      String providerData,
      String photoUrl,
      int photoSize,
      int photoWidth,
      int photoHeight,
      bool needName,
      bool needPhoneNumber,
      bool needEmail,
      bool needShippingAddress,
      bool sendPhoneNumberToProvider,
      bool sendEmailToProvider,
      bool isFlexible,
      bool disableNotification,
      int replyToMessageId,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'title': title,
      'description': description,
      'payload': payload,
      'provider_token': providerToken,
      'start_parameter': startParameter,
      'currency': currency,
      'prices': prices,
      'provider_data': providerData,
      'photo_url': photoUrl,
      'photo_size': photoSize,
      'photo_width': photoWidth,
      'photo_height': photoHeight,
      'need_name': needName,
      'need_phone_number': needPhoneNumber,
      'need_email': needEmail,
      'need_shipping_address': needShippingAddress,
      'send_phone_number_to_provider': sendPhoneNumberToProvider,
      'send_email_to_provider': sendEmailToProvider,
      'is_flexible': isFlexible,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendInvoice',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<bool> answerShippingQuery(
      {String shippingQueryId,
      bool ok,
      List<ShippingOption> shippingOptions,
      String errorMessage}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'shipping_query_id': shippingQueryId,
      'ok': ok,
      'shipping_options': shippingOptions,
      'error_message': errorMessage
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/answerShippingQuery',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> answerPreCheckoutQuery(
      {String preCheckoutQueryId, bool ok, String errorMessage}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'pre_checkout_query_id': preCheckoutQueryId,
      'ok': ok,
      'error_message': errorMessage
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/answerPreCheckoutQuery',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<bool> setPassportDataErrors(
      {int userId, List<PassportElementError> errors}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{'user_id': userId, 'errors': errors};

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setPassportDataErrors',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data;
    });
  }

  Future<Message> sendGame(
      {int chatId,
      String gameShortName,
      bool disableNotification,
      int replyToMessageId,
      InlineKeyboardMarkup replyMarkup}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'chat_id': chatId,
      'game_short_name': gameShortName,
      'disable_notification': disableNotification,
      'reply_to_message_id': replyToMessageId,
      'reply_markup': replyMarkup
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/sendGame',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<Message> setGameScore(
      {int userId,
      int score,
      bool force,
      bool disableEditMessage,
      int chatId,
      int messageId,
      String inlineMessageId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'user_id': userId,
      'score': score,
      'force': force,
      'disable_edit_message': disableEditMessage,
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/setGameScore',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return Message.fromJson(response.data);
    });
  }

  Future<List<GameHighScore>> getGameHighScores(
      {int userId, int chatId, int messageId, String inlineMessageId}) {
    final _headers = <String, dynamic>{};

    _headers.removeWhere((k, v) => v == null);

    final _queries = <String, dynamic>{
      'user_id': userId,
      'chat_id': chatId,
      'message_id': messageId,
      'inline_message_id': inlineMessageId
    };

    _queries.removeWhere((k, v) => v == null);

    final _data = null;

    return _client
        .request(
      '/getGameHighScores',
      queryParameters: _queries,
      data: _data,
      onSendProgress: null,
      onReceiveProgress: null,
      options: Options(
        method: 'GET',
        headers: _headers,
        contentType: null,
      ),
    )
        .then((response) {
      return response.data
          .map((data) => GameHighScore.fromJson(data as Map<String, dynamic>))
          .toList();
    });
  }
}
