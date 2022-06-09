import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/body_lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/header_lyrics_entity.dart';

class MessageEntity {
  HeaderEntity? header;
  BodyEntity? body;

  MessageEntity({this.header, this.body});

  MessageEntity.fromJson(Map<String, dynamic> json) {
    header =
        json['header'] != null ? HeaderEntity.fromJson(json['header']) : null;
    body = json['body'] != null ? BodyEntity.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (header != null) {
      data['header'] = header!.toJson();
    }
    if (body != null) {
      data['body'] = body!.toJson();
    }
    return data;
  }
}
