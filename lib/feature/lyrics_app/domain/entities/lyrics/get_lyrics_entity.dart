import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/message_lyrics.dart';

class GetLyrics extends Equatable {
  final MessageLyrics message;

  const GetLyrics({required this.message});

  factory GetLyrics.fromJson(Map<String, dynamic> json) {
    return GetLyrics(message: json['message']);
  }

  @override
  List<Object?> get props => [message];
}
