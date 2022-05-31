import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/body_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/header_entity.dart';

class Message extends Equatable {
  final Header header;
  final Body body;

  const Message({required this.header, required this.body});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(header: json['header'], body: json['body']);
  }

  @override
  List<Object?> get props => [header, body];
}
