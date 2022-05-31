import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/track_entity.dart';

class TrackList extends Equatable {
  final Track track;

  const TrackList({required this.track});

  factory TrackList.fromJson(Map<String, dynamic> json) {
    return TrackList(track: json['track']);
  }

  @override
  List<Object?> get props => [track];
}
