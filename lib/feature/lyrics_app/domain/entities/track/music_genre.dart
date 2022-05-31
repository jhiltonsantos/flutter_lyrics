import 'package:equatable/equatable.dart';

class MusicGenre extends Equatable {
  final int musicGenreId;
  final int musicGenreParentId;
  final String musicGenreName;
  final String musicGenreNameExtended;
  final String musicGenreVanity;

  const MusicGenre(
      {required this.musicGenreId,
      required this.musicGenreParentId,
      required this.musicGenreName,
      required this.musicGenreNameExtended,
      required this.musicGenreVanity});

  factory MusicGenre.fromJson(Map<String, dynamic> json) {
    return MusicGenre(
        musicGenreId: json['music_genre_id'],
        musicGenreParentId: json['music_genre_parent_id'],
        musicGenreName: json['music_genre_name'],
        musicGenreNameExtended: json['music_genre_name_extended'],
        musicGenreVanity: json['music_genre_vanity']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['music_genre_id'] = musicGenreId;
    data['music_genre_parent_id'] = musicGenreParentId;
    data['music_genre_name'] = musicGenreName;
    data['music_genre_name_extended'] = musicGenreNameExtended;
    data['music_genre_vanity'] = musicGenreVanity;
    return data;
  }

  @override
  List<Object?> get props => [
        musicGenreId,
        musicGenreParentId,
        musicGenreName,
        musicGenreNameExtended,
        musicGenreVanity
      ];
}
