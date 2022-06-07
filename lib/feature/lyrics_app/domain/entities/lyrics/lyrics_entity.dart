import 'package:equatable/equatable.dart';

class LyricsEntity extends Equatable {
  final int lyricsId;
  final int explicit;
  final String lyricsBody;
  final String scriptTrackingUrl;
  final String pixelTrackingUrl;
  final String lyricsCopyright;
  final String updatedTime;

  const LyricsEntity(
      {required this.lyricsId,
      required this.explicit,
      required this.lyricsBody,
      required this.scriptTrackingUrl,
      required this.pixelTrackingUrl,
      required this.lyricsCopyright,
      required this.updatedTime});

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
