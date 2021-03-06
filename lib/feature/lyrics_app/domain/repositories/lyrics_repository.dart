import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/core/error/failure.dart';

import '../entities/lyrics/lyrics_entity.dart';

abstract class LyricsRepository {
  Future<Either<Failure, LyricsEntity>> getLyrics(String track);
}
