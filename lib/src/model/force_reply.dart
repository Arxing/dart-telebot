import 'export.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'force_reply.g.dart';

@JsonSerializable(includeIfNull: false)
class ForceReply {
  /// Shows reply interface to the user, as if they manually selected the bot‘s message and tapped ’Reply'
  @JsonKey(name: "force_reply")
  bool forceReply;

  /// Optional. Use this parameter if you want to force reply from specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
  @JsonKey(name: "selective")
  bool selective;

  ForceReply({this.forceReply, this.selective});
  factory ForceReply.fromJson(Map<String, dynamic> json) =>
      _$ForceReplyFromJson(json);

  Map<String, dynamic> toJson() => _$ForceReplyToJson(this);

  String toString() => jsonEncode(toJson());
}
