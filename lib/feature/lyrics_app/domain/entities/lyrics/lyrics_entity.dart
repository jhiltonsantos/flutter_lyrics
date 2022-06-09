import 'package:equatable/equatable.dart';

class LyricsEntity extends Equatable {
  int? lyricsId;
  int? explicit;
  String? lyricsBody;
  String? scriptTrackingUrl;
  String? pixelTrackingUrl;
  String? lyricsCopyright;
  String? updatedTime;

  LyricsEntity(
      {this.lyricsId,
      this.explicit,
      this.lyricsBody,
      this.scriptTrackingUrl,
      this.pixelTrackingUrl,
      this.lyricsCopyright,
      this.updatedTime});

  LyricsEntity.fromJson(Map<String, dynamic> json) {
    lyricsId = json['lyrics_id'];
    explicit = json['explicit'];
    lyricsBody = json['lyrics_body'];
    scriptTrackingUrl = json['script_tracking_url'];
    pixelTrackingUrl = json['pixel_tracking_url'];
    lyricsCopyright = json['lyrics_copyright'];
    updatedTime = json['updated_time'];
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
