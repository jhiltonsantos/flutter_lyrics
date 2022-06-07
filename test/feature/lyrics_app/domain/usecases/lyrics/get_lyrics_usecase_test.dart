import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/lyrics_repository.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/usecases/lyrics/get_lyrics_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockLyricsRepository extends Mock implements LyricsRepository {}

@GenerateMocks([MockLyricsRepository])
void main() {
  late MockLyricsRepository mockLyricsRepository;
  late GetLyricsUsecase usecase;

  setUp(() {
    mockLyricsRepository = MockLyricsRepository();
    usecase = GetLyricsUsecase(mockLyricsRepository);
  });

  const tTrackId = '1';
  const tLyrics = LyricsEntity(
      lyricsId: 1,
      explicit: 0,
      lyricsBody: 'lyricsBody',
      scriptTrackingUrl: 'scriptTrackingUrl',
      pixelTrackingUrl: 'pixelTrackingUrl',
      lyricsCopyright: 'lyricsCopyright',
      updatedTime: 'updatedTime');

  group('all', () {
    test('Deve pegar a letra do repositorio Lyrics', () async {
      when(mockLyricsRepository.getLyrics(tTrackId))
          .thenAnswer((_) async => const Right(tLyrics));

      final result = await usecase.execute(tTrackId);

      expect(result, const Right(tLyrics));

      verify(mockLyricsRepository.getLyrics(tTrackId));
      verifyNoMoreInteractions(mockLyricsRepository);
    });
  });
}
