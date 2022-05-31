import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/music_genre_list_entity.dart';

class PrimaryGenres extends Equatable {
  final List<MusicGenreList> musicGenreList;

  const PrimaryGenres({required this.musicGenreList});

  factory PrimaryGenres.fromJson(Map<String, dynamic> json) {
    return PrimaryGenres(musicGenreList: json['music_genre_list']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['music_genre_list'] = musicGenreList.map((v) => v.toJson()).toList();
    return data;
  }

  @override
  List<Object?> get props => [musicGenreList];
}
