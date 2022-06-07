import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';

class LyricsModel extends LyricsEntity {
  const LyricsModel(
      {required super.lyricsId,
      required super.explicit,
      required super.lyricsBody,
      required super.scriptTrackingUrl,
      required super.pixelTrackingUrl,
      required super.lyricsCopyright,
      required super.updatedTime})
      : super();

  factory LyricsModel.fromJson(Map<String, dynamic> json) {
    return LyricsModel(
        lyricsId: json['lyrics_id'],
        explicit: json['explicit'],
        lyricsBody: json['lyrics_body'],
        scriptTrackingUrl: json['script_tracking_url'],
        pixelTrackingUrl: json['pixel_tracking_url'],
        lyricsCopyright: json['lyrics_copyright'],
        updatedTime: json['updated_time']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lyrics_id'] = lyricsId;
    data['explicit'] = explicit;
    data['lyrics_body'] = lyricsBody;
    data['script_tracking_url'] = scriptTrackingUrl;
    data['pixel_tracking_url'] = pixelTrackingUrl;
    data['lyrics_copyright'] = lyricsCopyright;
    data['updated_time'] = updatedTime;
    return data;
  }
}
