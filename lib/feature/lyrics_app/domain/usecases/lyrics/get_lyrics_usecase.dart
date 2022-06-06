import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/core/usecase/usecase.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/lyrics_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetLyricsUsecase extends UseCase<LyricsEntity, String> {
  final LyricsRepository _lyricsRepository;

  GetLyricsUsecase(this._lyricsRepository);

  @override
  Future<Either<Failure, LyricsEntity>> execute(String params) async {
    return await _lyricsRepository.getLyrics(params);
  }
}
