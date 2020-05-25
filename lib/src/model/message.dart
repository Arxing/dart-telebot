import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'message.g.dart';

@JsonSerializable(includeIfNull: false)
class Message {
  /// Unique message identifier inside this chat
  @JsonKey(name: "message_id")
  int messageId;

  /// Optional. Sender, empty for messages sent to channels
  @JsonKey(name: "from")
  User from;

  /// Date the message was sent in Unix time
  @JsonKey(name: "date")
  int date;

  /// Conversation the message belongs to
  @JsonKey(name: "chat")
  Chat chat;

  /// Optional. For forwarded messages, sender of the original message
  @JsonKey(name: "forward_from")
  User forwardFrom;

  /// Optional. For messages forwarded from channels, information about the original channel
  @JsonKey(name: "forward_from_chat")
  Chat forwardFromChat;

  /// Optional. For messages forwarded from channels, identifier of the original message in the channel
  @JsonKey(name: "forward_from_message_id")
  int forwardFromMessageId;

  /// Optional. For messages forwarded from channels, signature of the post author if present
  @JsonKey(name: "forward_signature")
  String forwardSignature;

  /// Optional. Sender's name for messages forwarded from users who disallow adding a link to their account in forwarded messages
  @JsonKey(name: "forward_sender_name")
  String forwardSenderName;

  /// Optional. For forwarded messages, date the original message was sent in Unix time
  @JsonKey(name: "forward_date")
  int forwardDate;

  /// Optional. For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply.
  @JsonKey(name: "reply_to_message")
  Message replyToMessage;

  /// Optional. Date the message was last edited in Unix time
  @JsonKey(name: "edit_date")
  int editDate;

  /// Optional. The unique identifier of a media message group this message belongs to
  @JsonKey(name: "media_group_id")
  String mediaGroupId;

  /// Optional. Signature of the post author for messages in channels
  @JsonKey(name: "author_signature")
  String authorSignature;

  /// Optional. For text messages, the actual UTF-8 text of the message, 0-4096 characters
  @JsonKey(name: "text")
  String text;

  /// Optional. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
  @JsonKey(name: "entities")
  List<MessageEntity> entities;

  /// Optional. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
  @JsonKey(name: "caption_entities")
  List<MessageEntity> captionEntities;

  /// Optional. Message is an audio file, information about the file
  @JsonKey(name: "audio")
  Audio audio;

  /// Optional. Message is a general file, information about the file
  @JsonKey(name: "document")
  Document document;

  /// Optional. Message is an animation, information about the animation. For backward compatibility, when this field is set, the document field will also be set
  @JsonKey(name: "animation")
  Animation animation;

  /// Optional. Message is a game, information about the game. More about games »
  @JsonKey(name: "game")
  Game game;

  /// Optional. Message is a photo, available sizes of the photo
  @JsonKey(name: "photo")
  List<PhotoSize> photo;

  /// Optional. Message is a sticker, information about the sticker
  @JsonKey(name: "sticker")
  Sticker sticker;

  /// Optional. Message is a video, information about the video
  @JsonKey(name: "video")
  Video video;

  /// Optional. Message is a voice message, information about the file
  @JsonKey(name: "voice")
  Voice voice;

  /// Optional. Message is a video note, information about the video message
  @JsonKey(name: "video_note")
  VideoNote videoNote;

  /// Optional. Caption for the animation, audio, document, photo, video or voice, 0-1024 characters
  @JsonKey(name: "caption")
  String caption;

  /// Optional. Message is a shared contact, information about the contact
  @JsonKey(name: "contact")
  Contact contact;

  /// Optional. Message is a shared location, information about the location
  @JsonKey(name: "location")
  Location location;

  /// Optional. Message is a venue, information about the venue
  @JsonKey(name: "venue")
  Venue venue;

  /// Optional. Message is a native poll, information about the poll
  @JsonKey(name: "poll")
  Poll poll;

  /// Optional. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
  @JsonKey(name: "new_chat_members")
  List<User> newChatMembers;

  /// Optional. A member was removed from the group, information about them (this member may be the bot itself)
  @JsonKey(name: "left_chat_member")
  User leftChatMember;

  /// Optional. A chat title was changed to this value
  @JsonKey(name: "new_chat_title")
  String newChatTitle;

  /// Optional. A chat photo was change to this value
  @JsonKey(name: "new_chat_photo")
  List<PhotoSize> newChatPhoto;

  /// Optional. Service message: the chat photo was deleted
  @JsonKey(name: "delete_chat_photo")
  bool deleteChatPhoto;

  /// Optional. Service message: the group has been created
  @JsonKey(name: "group_chat_created")
  bool groupChatCreated;

  /// Optional. Service message: the supergroup has been created. This field can‘t be received in a message coming through updates, because bot can’t be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup.
  @JsonKey(name: "supergroup_chat_created")
  bool supergroupChatCreated;

  /// Optional. Service message: the channel has been created. This field can‘t be received in a message coming through updates, because bot can’t be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel.
  @JsonKey(name: "channel_chat_created")
  bool channelChatCreated;

  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
  @JsonKey(name: "migrate_to_chat_id")
  int migrateToChatId;

  /// Optional. The supergroup has been migrated from a group with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
  @JsonKey(name: "migrate_from_chat_id")
  int migrateFromChatId;

  /// Optional. Specified message was pinned. Note that the Message object in this field will not contain further reply_to_message fields even if it is itself a reply.
  @JsonKey(name: "pinned_message")
  Message pinnedMessage;

  /// Optional. Message is an invoice for a payment, information about the invoice. More about payments »
  @JsonKey(name: "invoice")
  Invoice invoice;

  /// Optional. Message is a service message about a successful payment, information about the payment. More about payments »
  @JsonKey(name: "successful_payment")
  SuccessfulPayment successfulPayment;

  /// Optional. The domain name of the website on which the user has logged in. More about Telegram Login »
  @JsonKey(name: "connected_website")
  String connectedWebsite;

  /// Optional. Telegram Passport data
  @JsonKey(name: "passport_data")
  PassportData passportData;

  /// Optional. Inline keyboard attached to the message. login_url buttons are represented as ordinary url buttons.
  @JsonKey(name: "reply_markup")
  InlineKeyboardMarkup replyMarkup;

  Message(
      {this.messageId,
      this.from,
      this.date,
      this.chat,
      this.forwardFrom,
      this.forwardFromChat,
      this.forwardFromMessageId,
      this.forwardSignature,
      this.forwardSenderName,
      this.forwardDate,
      this.replyToMessage,
      this.editDate,
      this.mediaGroupId,
      this.authorSignature,
      this.text,
      this.entities,
      this.captionEntities,
      this.audio,
      this.document,
      this.animation,
      this.game,
      this.photo,
      this.sticker,
      this.video,
      this.voice,
      this.videoNote,
      this.caption,
      this.contact,
      this.location,
      this.venue,
      this.poll,
      this.newChatMembers,
      this.leftChatMember,
      this.newChatTitle,
      this.newChatPhoto,
      this.deleteChatPhoto,
      this.groupChatCreated,
      this.supergroupChatCreated,
      this.channelChatCreated,
      this.migrateToChatId,
      this.migrateFromChatId,
      this.pinnedMessage,
      this.invoice,
      this.successfulPayment,
      this.connectedWebsite,
      this.passportData,
      this.replyMarkup});
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  String toString() => jsonEncode(toJson());
}
