import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/message_lyrics.dart';

class TemplateLyricsEntity {
  MessageEntity? message;

  TemplateLyricsEntity({this.message});

  TemplateLyricsEntity.fromJson(Map<String, dynamic> json) {
    message = json['message'] != null
        ? MessageEntity.fromJson(json['message'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message!.toJson();
    }
    return data;
  }
}
