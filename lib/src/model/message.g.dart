// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    messageId: json['message_id'] as int,
    from: json['from'] == null
        ? null
        : User.fromJson(json['from'] as Map<String, dynamic>),
    date: json['date'] as int,
    chat: json['chat'] == null
        ? null
        : Chat.fromJson(json['chat'] as Map<String, dynamic>),
    forwardFrom: json['forward_from'] == null
        ? null
        : User.fromJson(json['forward_from'] as Map<String, dynamic>),
    forwardFromChat: json['forward_from_chat'] == null
        ? null
        : Chat.fromJson(json['forward_from_chat'] as Map<String, dynamic>),
    forwardFromMessageId: json['forward_from_message_id'] as int,
    forwardSignature: json['forward_signature'] as String,
    forwardSenderName: json['forward_sender_name'] as String,
    forwardDate: json['forward_date'] as int,
    replyToMessage: json['reply_to_message'] == null
        ? null
        : Message.fromJson(json['reply_to_message'] as Map<String, dynamic>),
    editDate: json['edit_date'] as int,
    mediaGroupId: json['media_group_id'] as String,
    authorSignature: json['author_signature'] as String,
    text: json['text'] as String,
    entities: (json['entities'] as List)
        ?.map((e) => e == null
            ? null
            : MessageEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    captionEntities: (json['caption_entities'] as List)
        ?.map((e) => e == null
            ? null
            : MessageEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    audio: json['audio'] == null
        ? null
        : Audio.fromJson(json['audio'] as Map<String, dynamic>),
    document: json['document'] == null
        ? null
        : Document.fromJson(json['document'] as Map<String, dynamic>),
    animation: json['animation'] == null
        ? null
        : Animation.fromJson(json['animation'] as Map<String, dynamic>),
    game: json['game'] == null
        ? null
        : Game.fromJson(json['game'] as Map<String, dynamic>),
    photo: (json['photo'] as List)
        ?.map((e) =>
            e == null ? null : PhotoSize.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sticker: json['sticker'] == null
        ? null
        : Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
    video: json['video'] == null
        ? null
        : Video.fromJson(json['video'] as Map<String, dynamic>),
    voice: json['voice'] == null
        ? null
        : Voice.fromJson(json['voice'] as Map<String, dynamic>),
    videoNote: json['video_note'] == null
        ? null
        : VideoNote.fromJson(json['video_note'] as Map<String, dynamic>),
    caption: json['caption'] as String,
    contact: json['contact'] == null
        ? null
        : Contact.fromJson(json['contact'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    venue: json['venue'] == null
        ? null
        : Venue.fromJson(json['venue'] as Map<String, dynamic>),
    poll: json['poll'] == null
        ? null
        : Poll.fromJson(json['poll'] as Map<String, dynamic>),
    newChatMembers: (json['new_chat_members'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    leftChatMember: json['left_chat_member'] == null
        ? null
        : User.fromJson(json['left_chat_member'] as Map<String, dynamic>),
    newChatTitle: json['new_chat_title'] as String,
    newChatPhoto: (json['new_chat_photo'] as List)
        ?.map((e) =>
            e == null ? null : PhotoSize.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    deleteChatPhoto: json['delete_chat_photo'] as bool,
    groupChatCreated: json['group_chat_created'] as bool,
    supergroupChatCreated: json['supergroup_chat_created'] as bool,
    channelChatCreated: json['channel_chat_created'] as bool,
    migrateToChatId: json['migrate_to_chat_id'] as int,
    migrateFromChatId: json['migrate_from_chat_id'] as int,
    pinnedMessage: json['pinned_message'] == null
        ? null
        : Message.fromJson(json['pinned_message'] as Map<String, dynamic>),
    invoice: json['invoice'] == null
        ? null
        : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    successfulPayment: json['successful_payment'] == null
        ? null
        : SuccessfulPayment.fromJson(
            json['successful_payment'] as Map<String, dynamic>),
    connectedWebsite: json['connected_website'] as String,
    passportData: json['passport_data'] == null
        ? null
        : PassportData.fromJson(json['passport_data'] as Map<String, dynamic>),
    replyMarkup: json['reply_markup'] == null
        ? null
        : InlineKeyboardMarkup.fromJson(
            json['reply_markup'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message_id', instance.messageId);
  writeNotNull('from', instance.from);
  writeNotNull('date', instance.date);
  writeNotNull('chat', instance.chat);
  writeNotNull('forward_from', instance.forwardFrom);
  writeNotNull('forward_from_chat', instance.forwardFromChat);
  writeNotNull('forward_from_message_id', instance.forwardFromMessageId);
  writeNotNull('forward_signature', instance.forwardSignature);
  writeNotNull('forward_sender_name', instance.forwardSenderName);
  writeNotNull('forward_date', instance.forwardDate);
  writeNotNull('reply_to_message', instance.replyToMessage);
  writeNotNull('edit_date', instance.editDate);
  writeNotNull('media_group_id', instance.mediaGroupId);
  writeNotNull('author_signature', instance.authorSignature);
  writeNotNull('text', instance.text);
  writeNotNull('entities', instance.entities);
  writeNotNull('caption_entities', instance.captionEntities);
  writeNotNull('audio', instance.audio);
  writeNotNull('document', instance.document);
  writeNotNull('animation', instance.animation);
  writeNotNull('game', instance.game);
  writeNotNull('photo', instance.photo);
  writeNotNull('sticker', instance.sticker);
  writeNotNull('video', instance.video);
  writeNotNull('voice', instance.voice);
  writeNotNull('video_note', instance.videoNote);
  writeNotNull('caption', instance.caption);
  writeNotNull('contact', instance.contact);
  writeNotNull('location', instance.location);
  writeNotNull('venue', instance.venue);
  writeNotNull('poll', instance.poll);
  writeNotNull('new_chat_members', instance.newChatMembers);
  writeNotNull('left_chat_member', instance.leftChatMember);
  writeNotNull('new_chat_title', instance.newChatTitle);
  writeNotNull('new_chat_photo', instance.newChatPhoto);
  writeNotNull('delete_chat_photo', instance.deleteChatPhoto);
  writeNotNull('group_chat_created', instance.groupChatCreated);
  writeNotNull('supergroup_chat_created', instance.supergroupChatCreated);
  writeNotNull('channel_chat_created', instance.channelChatCreated);
  writeNotNull('migrate_to_chat_id', instance.migrateToChatId);
  writeNotNull('migrate_from_chat_id', instance.migrateFromChatId);
  writeNotNull('pinned_message', instance.pinnedMessage);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('successful_payment', instance.successfulPayment);
  writeNotNull('connected_website', instance.connectedWebsite);
  writeNotNull('passport_data', instance.passportData);
  writeNotNull('reply_markup', instance.replyMarkup);
  return val;
}
