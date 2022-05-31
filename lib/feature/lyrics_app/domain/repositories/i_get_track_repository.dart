import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/track/track_list_entity.dart';

abstract class IGetTrackRepository {
  late Uri urlController;

  Future<Either<Failure, TrackList>> getTracks(String search);
}
