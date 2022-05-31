import 'package:equatable/equatable.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/track_list_entity.dart';

class Body extends Equatable {
  final List<TrackList> trackList;

  const Body({required this.trackList});

  factory Body.fromJson(Map<String, dynamic> json) {
    return Body(trackList: json['track_list']);
  }

  @override
  List<Object?> get props => [trackList];
}
