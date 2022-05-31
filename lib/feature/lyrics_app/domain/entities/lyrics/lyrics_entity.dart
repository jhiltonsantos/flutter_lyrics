import 'package:equatable/equatable.dart';

class Lyrics extends Equatable {
  final int lyricsId;
  final int explicit;
  final String lyricsBody;
  final String scriptTrackingUrl;
  final String pixelTrackingUrl;
  final String lyricsCopyright;
  final String updatedTime;

  const Lyrics(
      {required this.lyricsId,
      required this.explicit,
      required this.lyricsBody,
      required this.scriptTrackingUrl,
      required this.pixelTrackingUrl,
      required this.lyricsCopyright,
      required this.updatedTime});

  factory Lyrics.fromJson(Map<String, dynamic> json) {
    return Lyrics(
        lyricsId: json['lyrics_id'],
        explicit: json['explicit'],
        lyricsBody: json['lyrics_body'],
        scriptTrackingUrl: json['script_tracking_url'],
        pixelTrackingUrl: json['pixel_tracking_url'],
        lyricsCopyright: json['lyrics_copyright'],
        updatedTime: json['updated_time']);
  }

  @override
  List<Object?> get props => [
        lyricsId,
        explicit,
        lyricsBody,
        scriptTrackingUrl,
        pixelTrackingUrl,
        lyricsCopyright,
        updatedTime
      ];
}
