import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/music_genre.dart';

class MusicGenreList extends Equatable {
  final MusicGenre musicGenre;

  const MusicGenreList({required this.musicGenre});

  factory MusicGenreList.fromJson(Map<String, dynamic> json) {
    return MusicGenreList(musicGenre: json['music_genre']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['music_genre'] = musicGenre.toJson();
    return data;
  }

  @override
  List<Object?> get props => [musicGenre];
}
