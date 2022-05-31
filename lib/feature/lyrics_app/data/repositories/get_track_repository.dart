import 'package:flutter_lyrics/core/app/app_constants.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/track_list_entity.dart';
import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/i_get_track_repository.dart';

class GetTrackRepository implements IGetTrackRepository {
  @override
  Uri urlController = Uri.parse(AppConstants.API_ROOT);

  @override
  Future<Either<Failure, TrackList>> getTracks(String search) {
    throw UnimplementedError();
  }
}
