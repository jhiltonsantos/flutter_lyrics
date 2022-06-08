import 'package:equatable/equatable.dart';

class LyricsEntity extends Equatable {
  final int? lyricsId;
  final int? explicit;
  final String? lyricsBody;
  final String? scriptTrackingUrl;
  final String? pixelTrackingUrl;
  final String? lyricsCopyright;
  final String? updatedTime;

  const LyricsEntity(
      {this.lyricsId,
      this.explicit,
      this.lyricsBody,
      this.scriptTrackingUrl,
      this.pixelTrackingUrl,
      this.lyricsCopyright,
      this.updatedTime});

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
