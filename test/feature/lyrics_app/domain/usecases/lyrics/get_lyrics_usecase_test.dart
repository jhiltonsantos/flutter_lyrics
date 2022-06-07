import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/lyrics_repository.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/usecases/lyrics/get_lyrics_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockLyricsRepository extends Mock implements LyricsRepository {}

void main() {
  GetLyricsUsecase usecase;
  MockLyricsRepository mockLyricsRepository;

  setUp(() {
    mockLyricsRepository = MockLyricsRepository();
    usecase = GetLyricsUsecase(mockLyricsRepository);
  });

  const tLyrics = LyricsEntity(
      lyricsId: 1,
      explicit: 0,
      lyricsBody: 'lyricsBody',
      scriptTrackingUrl: 'scriptTrackingUrl',
      pixelTrackingUrl: 'pixelTrackingUrl',
      lyricsCopyright: 'lyricsCopyright',
      updatedTime: 'updatedTime');

  //test('Deve pegar a letra do repositorio Lyrics', () async {
  //  when(mockLyricsRepository.getLyrics('1'))
  //     .thenAnswer((_) async => const Right(tLyrics));
  // });
}
