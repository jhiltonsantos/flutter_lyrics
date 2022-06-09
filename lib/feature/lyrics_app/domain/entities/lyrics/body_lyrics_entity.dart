import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';

class BodyEntity extends Equatable {
  LyricsEntity? lyrics;

  BodyEntity({this.lyrics});

  BodyEntity.fromJson(Map<String, dynamic> json) {
    lyrics =
        json['lyrics'] != null ? LyricsEntity.fromJson(json['lyrics']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (lyrics != null) {
      data['lyrics'] = lyrics!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [lyrics];
}
