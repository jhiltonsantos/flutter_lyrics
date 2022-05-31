import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/body_lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/header_lyrics_entity.dart';

class MessageLyrics extends Equatable {
  final HeaderLyrics header;
  final BodyLyrics body;

  const MessageLyrics({required this.header, required this.body});

  factory MessageLyrics.fromJson(Map<String, dynamic> json) {
    return MessageLyrics(header: json['header'], body: json['body']);
  }

  @override
  List<Object?> get props => [header, body];
}
