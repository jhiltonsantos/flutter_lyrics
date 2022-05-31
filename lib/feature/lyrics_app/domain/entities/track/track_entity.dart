import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/primary_genres.dart';

class Track extends Equatable {
  final int trackId;
  final String trackName;
  final List<dynamic> trackNameTranslationList;
  final int trackRating;
  final int commontrackId;
  final int instrumental;
  final int explicit;
  final int hasLyrics;
  final int hasSubtitles;
  final int hasRichsync;
  final int numFavourite;
  final int albumId;
  final String albumName;
  final int artistId;
  final String artistName;
  final String trackShareUrl;
  final String trackEditUrl;
  final int restricted;
  final String updatedTime;
  final PrimaryGenres primaryGenres;

  const Track(
      {required this.trackId,
      required this.trackName,
      required this.trackNameTranslationList,
      required this.trackRating,
      required this.commontrackId,
      required this.instrumental,
      required this.explicit,
      required this.hasLyrics,
      required this.hasSubtitles,
      required this.hasRichsync,
      required this.numFavourite,
      required this.albumId,
      required this.albumName,
      required this.artistId,
      required this.artistName,
      required this.trackShareUrl,
      required this.trackEditUrl,
      required this.restricted,
      required this.updatedTime,
      required this.primaryGenres});

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
        trackId: json['track_id'],
        trackName: json['track_name'],
        trackNameTranslationList: json['track_name_translation_list'],
        trackRating: json['track_rating'],
        commontrackId: json['commontrack_id'],
        instrumental: json['instrumental'],
        explicit: json['explicit'],
        hasLyrics: json['has_lyrics'], // TODO: Verifica se tem letra disponivel
        hasSubtitles: json['has_subtitles'],
        hasRichsync: json['has_richsync'],
        numFavourite: json['num_favourite'],
        albumId: json['album_id'],
        albumName: json['album_name'],
        artistId: json['artist_id'],
        artistName: json['artist_name'],
        trackShareUrl: json['track_share_url'],
        trackEditUrl: json['track_edit_url'],
        restricted: json['restricted'],
        updatedTime: json['updated_time'],
        primaryGenres: json['primary_genres']);
  }

  @override
  List<Object?> get props => [
        trackId,
        trackName,
        trackNameTranslationList,
        trackRating,
        commontrackId,
        instrumental,
        explicit,
        hasLyrics,
        hasSubtitles,
        hasRichsync,
        numFavourite,
        albumId,
        albumName,
        artistId,
        artistName,
        trackShareUrl,
        trackEditUrl,
        restricted,
        updatedTime,
        primaryGenres
      ];
}
