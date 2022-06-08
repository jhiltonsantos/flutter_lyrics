import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';

class BodyLyrics extends Equatable {
  final LyricsEntity? lyrics;

  const BodyLyrics({this.lyrics});

  factory BodyLyrics.fromJson(Map<String, dynamic> json) {
    return BodyLyrics(lyrics: json['lyrics']);
  }

  @override
  List<Object?> get props => [lyrics];
}
