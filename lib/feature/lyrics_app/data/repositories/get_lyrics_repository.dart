import 'package:flutter_lyrics/core/app/app_constants.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';
import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/i_get_lyrics_repository.dart';

// http://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=32016690&apikey=77433270cf4522cb6e2c8cbc82d510f7
class GetLyricsRepository implements IGetLyricsRepository {
  @override
  Uri urlController = Uri.parse(AppConstants.API_KEY);

  @override
  Future<Either<Failure, List<Lyrics>>> getLyrics(String track) {
    throw UnimplementedError();
  }
}
