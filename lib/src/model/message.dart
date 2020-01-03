import 'package:json_annotation/json_annotation.dart';
import 'package:telegram_bot/src/model/user.dart';
import 'package:telegram_bot/src/model/chat.dart';

part 'package:telegram_bot/src/model/message.g.dart';

@JsonSerializable()
class Message {
  int message_id;
  User from;
  int date;
  Chat chat;
  User forward_from;
  Chat forward_from_chat;
  int forward_from_message_id;
  String forward_signature;
  String forward_sender_name;
  int forward_date;
  Message reply_to_message;
  int edit_date;
  String media_group_id;
  String author_signature;
  String text;
 //  MessageEntity entities;
//  MessageEntity caption_entities;
//  Audio audio;
//  Document document;
//  Animation animation;
//  Game game;
//  PhotoSize photo;
//  Sticker sticker;
//  Video video;
//  Voice voice;
//  VideoNote video_note;
//  String caption;
//  Contact contact;
//  Location location;
//  Venue venue;
//  Poll poll;
//  User new_chat_members;
//  User left_chat_member;
//  String new_chat_title;
//  PhotoSize new_chat_photo;
//  True delete_chat_photo;
//  True group_chat_created;
//  True supergroup_chat_created;
//  True channel_chat_created;
//  int migrate_to_chat_id;
//  int migrate_from_chat_id;
//  Message pinned_message;
//  Invoice invoice;
//  SuccessfulPayment successful_payment;
//  String connected_website;
//  PassportData passport_data;
//  InlineKeyboardMarkup reply_markup;

  Message({
    this.message_id,
    this.from,
    this.date,
    this.chat,
    this.forward_from,
    this.forward_from_chat,
    this.forward_from_message_id,
    this.forward_signature,
    this.forward_sender_name,
    this.forward_date,
    this.reply_to_message,
    this.edit_date,
    this.media_group_id,
    this.author_signature,
    this.text,
  });

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
