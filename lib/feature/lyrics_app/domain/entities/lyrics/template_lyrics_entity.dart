import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/message_lyrics.dart';

class TemplateLyrics extends Equatable {
  final MessageLyrics message;

  const TemplateLyrics({required this.message});

  factory TemplateLyrics.fromJson(Map<String, dynamic> json) {
    return TemplateLyrics(message: json['message']);
  }

  @override
  List<Object?> get props => [message];
}
