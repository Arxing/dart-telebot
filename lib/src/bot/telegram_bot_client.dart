import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:meta/meta.dart';
import 'package:telebot/src/model/export.dart';
import 'package:trident/trident.dart';
import 'dart:convert';

part 'telegram_bot_client.tg.dart';

@Trident()
abstract class TelegramBotClient {
  @GET("/getUpdates2")
  Future<List<Update>> getUpdates(
      {@Query("offset") int offset,
      @Query("limit") int limit,
      @Query("timeout") int timeout,
      @Query("allowed_updates") List<String> allowedUpdates});

  @GET("/setWebhook")
  Future<bool> setWebhook(
      {@Query("url") @required String url,
      @Query("certificate") File certificate,
      @Query("max_connections") int maxConnections,
      @Query("allowed_updates") List<String> allowedUpdates});

  @GET("/deleteWebhook")
  Future<bool> deleteWebhook();

  @GET("/getWebhookInfo")
  Future<WebhookInfo> getWebhookInfo();

  @GET("/getMe")
  Future<User> getMe();

  @GET("/sendMessage")
  Future<Message> sendMessage(
      {@Query("chat_id") @required dynamic chatId,
      @Query("text") @required String text,
      @Query("parse_mode") String parseMode,
      @Query("disable_web_page_preview") bool disableWebPagePreview,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/forwardMessage")
  Future<Message> forwardMessage(
      {@Query("chat_id") @required dynamic chatId,
      @Query("from_chat_id") @required dynamic fromChatId,
      @Query("disable_notification") bool disableNotification,
      @Query("message_id") @required int messageId});

  @POST("/sendPhoto")
  Future<Message> sendPhoto(
      {@Field("chat_id") @required dynamic chatId,
      @Field("photo") @required String photo,
      @Field("caption") String caption,
      @Field("parse_mode") String parseMode,
      @Field("disable_notification") bool disableNotification,
      @Field("reply_to_message_id") int replyToMessageId,
      @Field("reply_markup") dynamic replyMarkup});

  @GET("/sendAudio")
  Future<Message> sendAudio(
      {@Query("chat_id") @required dynamic chatId,
      @Query("audio") @required String audio,
      @Query("caption") String caption,
      @Query("parse_mode") String parseMode,
      @Query("duration") int duration,
      @Query("performer") String performer,
      @Query("title") String title,
      @Query("thumb") String thumb,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendDocument")
  Future<Message> sendDocument(
      {@Query("chat_id") @required dynamic chatId,
      @Query("document") @required String document,
      @Query("thumb") String thumb,
      @Query("caption") String caption,
      @Query("parse_mode") String parseMode,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendVideo")
  Future<Message> sendVideo(
      {@Query("chat_id") @required dynamic chatId,
      @Query("video") @required String video,
      @Query("duration") int duration,
      @Query("width") int width,
      @Query("height") int height,
      @Query("thumb") String thumb,
      @Query("caption") String caption,
      @Query("parse_mode") String parseMode,
      @Query("supports_streaming") bool supportsStreaming,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendAnimation")
  Future<Message> sendAnimation(
      {@Query("chat_id") @required dynamic chatId,
      @Query("animation") @required String animation,
      @Query("duration") int duration,
      @Query("width") int width,
      @Query("height") int height,
      @Query("thumb") String thumb,
      @Query("caption") String caption,
      @Query("parse_mode") String parseMode,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendVoice")
  Future<Message> sendVoice(
      {@Query("chat_id") @required dynamic chatId,
      @Query("voice") @required String voice,
      @Query("caption") String caption,
      @Query("parse_mode") String parseMode,
      @Query("duration") int duration,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendVideoNote")
  Future<Message> sendVideoNote(
      {@Query("chat_id") @required dynamic chatId,
      @Query("video_note") @required String videoNote,
      @Query("duration") int duration,
      @Query("length") int length,
      @Query("thumb") String thumb,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendMediaGroup")
  Future<Message> sendMediaGroup(
      {@Query("chat_id") @required dynamic chatId,
      @Query("media") @required List<dynamic> media,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId});

  @GET("/sendLocation")
  Future<Message> sendLocation(
      {@Query("chat_id") @required dynamic chatId,
      @Query("latitude") @required double latitude,
      @Query("longitude") @required double longitude,
      @Query("live_period") int livePeriod,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/editMessageLiveLocation")
  Future<Message> editMessageLiveLocation(
      {@Query("chat_id") dynamic chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId,
      @Query("latitude") @required double latitude,
      @Query("longitude") @required double longitude,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/stopMessageLiveLocation")
  Future<Message> stopMessageLiveLocation(
      {@Query("chat_id") dynamic chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/sendVenue")
  Future<Message> sendVenue(
      {@Query("chat_id") @required dynamic chatId,
      @Query("latitude") @required double latitude,
      @Query("longitude") @required double longitude,
      @Query("title") @required String title,
      @Query("address") @required String address,
      @Query("foursquare_id") String foursquareId,
      @Query("foursquare_type") String foursquareType,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendContact")
  Future<Message> sendContact(
      {@Query("chat_id") @required dynamic chatId,
      @Query("phone_number") @required String phoneNumber,
      @Query("first_name") @required String firstName,
      @Query("last_name") String lastName,
      @Query("vcard") String vcard,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendPoll")
  Future<Message> sendPoll(
      {@Query("chat_id") @required dynamic chatId,
      @Query("question") @required String question,
      @Query("options") @required List<String> options,
      @Query("is_anonymous") bool isAnonymous,
      @Query("type") String type,
      @Query("allows_multiple_answers") bool allowsMultipleAnswers,
      @Query("correct_option_id") int correctOptionId,
      @Query("is_closed") bool isClosed,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/sendChatAction")
  Future<void> sendChatAction({@Query("chat_id") @required dynamic chatId, @Query("action") @required String action});

  @GET("/getUserProfilePhotos")
  Future<UserProfilePhotos> getUserProfilePhotos(
      {@Query("user_id") @required int userId, @Query("offset") int offset, @Query("limit") int limit});

  @GET("/getFile")
  Future<TelegramFile> getFile({@Query("file_id") @required String fileId});

  @GET("/kickChatMember")
  Future<bool> kickChatMember(
      {@Query("chat_id") @required dynamic chatId, @Query("user_id") @required int userId, @Query("until_date") int untilDate});

  @GET("/unbanChatMember")
  Future<bool> unbanChatMember({@Query("chat_id") @required dynamic chatId, @Query("user_id") @required int userId});

  @GET("/restrictChatMember")
  Future<bool> restrictChatMember(
      {@Query("chat_id") @required dynamic chatId,
      @Query("user_id") @required int userId,
      @Query("permissions") @required ChatPermissions permissions,
      @Query("until_date") int untilDate});

  @GET("/promoteChatMember")
  Future<bool> promoteChatMember(
      {@Query("chat_id") @required dynamic chatId,
      @Query("user_id") @required int userId,
      @Query("can_change_info") bool canChangeInfo,
      @Query("can_post_messages") bool canPostMessages,
      @Query("can_edit_messages") bool canEditMessages,
      @Query("can_delete_messages") bool canDeleteMessages,
      @Query("can_invite_users") bool canInviteUsers,
      @Query("can_restrict_members") bool canRestrictMembers,
      @Query("can_pin_messages") bool canPinMessages,
      @Query("can_promote_members") bool canPromoteMembers});

  @GET("/setChatAdministratorCustomTitle")
  Future<bool> setChatAdministratorCustomTitle(
      {@Query("chat_id") @required dynamic chatId,
      @Query("user_id") @required int userId,
      @Query("custom_title") @required String customTitle});

  @GET("/setChatPermissions")
  Future<bool> setChatPermissions(
      {@Query("chat_id") @required dynamic chatId, @Query("permissions") @required ChatPermissions permissions});

  @GET("/exportChatInviteLink")
  Future<String> exportChatInviteLink({@Query("chat_id") @required dynamic chatId});

  @GET("/setChatPhoto")
  Future<bool> setChatPhoto({@Query("chat_id") @required dynamic chatId, @Query("photo") @required File photo});

  @GET("/deleteChatPhoto")
  Future<bool> deleteChatPhoto({@Query("chat_id") @required dynamic chatId});

  @GET("/setChatTitle")
  Future<bool> setChatTitle({@Query("chat_id") @required dynamic chatId, @Query("title") @required String title});

  @GET("/setChatDescription")
  Future<bool> setChatDescription({@Query("chat_id") @required dynamic chatId, @Query("description") String description});

  @GET("/pinChatMessage")
  Future<bool> pinChatMessage(
      {@Query("chat_id") @required dynamic chatId,
      @Query("message_id") @required int messageId,
      @Query("disable_notification") bool disableNotification});

  @GET("/unpinChatMessage")
  Future<bool> unpinChatMessage({@Query("chat_id") @required dynamic chatId});

  @GET("/leaveChat")
  Future<bool> leaveChat({@Query("chat_id") @required dynamic chatId});

  @GET("/getChat")
  Future<Chat> getChat({@Query("chat_id") @required dynamic chatId});

  @GET("/getChatAdministrators")
  Future<List<ChatMember>> getChatAdministrators({@Query("chat_id") @required dynamic chatId});

  @GET("/getChatMembersCount")
  Future<int> getChatMembersCount({@Query("chat_id") @required dynamic chatId});

  @GET("/getChatMember")
  Future<ChatMember> getChatMember({@Query("chat_id") @required dynamic chatId, @Query("user_id") @required int userId});

  @GET("/setChatStickerSet")
  Future<bool> setChatStickerSet({@Query("chat_id") @required dynamic chatId, @Query("sticker_set_name") @required String stickerSetName});

  @GET("/deleteChatStickerSet")
  Future<bool> deleteChatStickerSet({@Query("chat_id") @required dynamic chatId});

  @GET("/answerCallbackQuery")
  Future<bool> answerCallbackQuery(
      {@Query("callback_query_id") @required String callbackQueryId,
      @Query("text") String text,
      @Query("show_alert") bool showAlert,
      @Query("url") String url,
      @Query("cache_time") int cacheTime});

  @GET("/editMessageText")
  Future<Message> editMessageText(
      {@Query("chat_id") dynamic chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId,
      @Query("text") @required String text,
      @Query("parse_mode") String parseMode,
      @Query("disable_web_page_preview") bool disableWebPagePreview,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/editMessageCaption")
  Future<Message> editMessageCaption(
      {@Query("chat_id") dynamic chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId,
      @Query("caption") String caption,
      @Query("parse_mode") String parseMode,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/editMessageMedia")
  Future<Message> editMessageMedia(
      {@Query("chat_id") dynamic chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId,
      @Query("media") @required InputMedia media,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/editMessageReplyMarkup")
  Future<Message> editMessageReplyMarkup(
      {@Query("chat_id") dynamic chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/stopPoll")
  Future<Poll> stopPoll(
      {@Query("chat_id") @required dynamic chatId,
      @Query("message_id") @required int messageId,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/deleteMessage")
  Future<bool> deleteMessage({@Query("chat_id") @required dynamic chatId, @Query("message_id") @required int messageId});

  @GET("/sendSticker")
  Future<Message> sendSticker(
      {@Query("chat_id") @required dynamic chatId,
      @Query("sticker") @required String sticker,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") dynamic replyMarkup});

  @GET("/getStickerSet")
  Future<StickerSet> getStickerSet({@Query("name") @required String name});

  @GET("/uploadStickerFile")
  Future<TelegramFile> uploadStickerFile({@Query("user_id") @required int userId, @Query("png_sticker") @required File pngSticker});

  @GET("/createNewStickerSet")
  Future<bool> createNewStickerSet(
      {@Query("user_id") @required int userId,
      @Query("name") @required String name,
      @Query("title") @required String title,
      @Query("png_sticker") @required String pngSticker,
      @Query("emojis") @required String emojis,
      @Query("contains_masks") bool containsMasks,
      @Query("mask_position") MaskPosition maskPosition});

  @GET("/addStickerToSet")
  Future<bool> addStickerToSet(
      {@Query("user_id") @required int userId,
      @Query("name") @required String name,
      @Query("png_sticker") @required String pngSticker,
      @Query("emojis") @required String emojis,
      @Query("mask_position") MaskPosition maskPosition});

  @GET("/setStickerPositionInSet")
  Future<bool> setStickerPositionInSet({@Query("sticker") @required String sticker, @Query("position") @required int position});

  @GET("/deleteStickerFromSet")
  Future<bool> deleteStickerFromSet({@Query("sticker") @required String sticker});

  @GET("/answerInlineQuery")
  Future<bool> answerInlineQuery(
      {@Query("inline_query_id") @required String inlineQueryId,
      @Query("results") @required List<InlineQueryResult> results,
      @Query("cache_time") int cacheTime,
      @Query("is_personal") bool isPersonal,
      @Query("next_offset") String nextOffset,
      @Query("switch_pm_text") String switchPmText,
      @Query("switch_pm_parameter") String switchPmParameter});

  @GET("/sendInvoice")
  Future<Message> sendInvoice(
      {@Query("chat_id") @required int chatId,
      @Query("title") @required String title,
      @Query("description") @required String description,
      @Query("payload") @required String payload,
      @Query("provider_token") @required String providerToken,
      @Query("start_parameter") @required String startParameter,
      @Query("currency") @required String currency,
      @Query("prices") @required List<LabeledPrice> prices,
      @Query("provider_data") String providerData,
      @Query("photo_url") String photoUrl,
      @Query("photo_size") int photoSize,
      @Query("photo_width") int photoWidth,
      @Query("photo_height") int photoHeight,
      @Query("need_name") bool needName,
      @Query("need_phone_number") bool needPhoneNumber,
      @Query("need_email") bool needEmail,
      @Query("need_shipping_address") bool needShippingAddress,
      @Query("send_phone_number_to_provider") bool sendPhoneNumberToProvider,
      @Query("send_email_to_provider") bool sendEmailToProvider,
      @Query("is_flexible") bool isFlexible,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/answerShippingQuery")
  Future<bool> answerShippingQuery(
      {@Query("shipping_query_id") @required String shippingQueryId,
      @Query("ok") @required bool ok,
      @Query("shipping_options") List<ShippingOption> shippingOptions,
      @Query("error_message") String errorMessage});

  @GET("/answerPreCheckoutQuery")
  Future<bool> answerPreCheckoutQuery(
      {@Query("pre_checkout_query_id") @required String preCheckoutQueryId,
      @Query("ok") @required bool ok,
      @Query("error_message") String errorMessage});

  @GET("/setPassportDataErrors")
  Future<bool> setPassportDataErrors(
      {@Query("user_id") @required int userId, @Query("errors") @required List<PassportElementError> errors});

  @GET("/sendGame")
  Future<Message> sendGame(
      {@Query("chat_id") @required int chatId,
      @Query("game_short_name") @required String gameShortName,
      @Query("disable_notification") bool disableNotification,
      @Query("reply_to_message_id") int replyToMessageId,
      @Query("reply_markup") InlineKeyboardMarkup replyMarkup});

  @GET("/setGameScore")
  Future<Message> setGameScore(
      {@Query("user_id") @required int userId,
      @Query("score") @required int score,
      @Query("force") bool force,
      @Query("disable_edit_message") bool disableEditMessage,
      @Query("chat_id") int chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId});

  @GET("/getGameHighScores")
  Future<List<GameHighScore>> getGameHighScores(
      {@Query("user_id") @required int userId,
      @Query("chat_id") int chatId,
      @Query("message_id") int messageId,
      @Query("inline_message_id") String inlineMessageId});
}
