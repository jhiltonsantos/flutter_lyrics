import 'package:flutter_lyrics/core/app/app_constants.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/track_list_entity.dart';
import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/track_repository.dart';

// http://api.musixmatch.com/ws/1.1/track.search?q_track=no_diggity&page_size=3&page=1&s_track_rating=desc&apikey=77433270cf4522cb6e2c8cbc82d510f7

class TrackRepositoryImpl implements TrackRepository {
  @override
  Uri urlController = Uri.parse(AppConstants.API_ROOT);

  @override
  Future<Either<Failure, TrackList>> getTracks(String search) {
    throw UnimplementedError();
  }
}
