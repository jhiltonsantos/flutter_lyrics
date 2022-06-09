import 'package:flutter_lyrics/feature/lyrics_app/data/repositories/lyrics_repository_impl.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/lyrics_repository.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/usecases/lyrics/get_lyrics_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockLyricsRepository extends Mock implements LyricsRepository {}

@GenerateMocks([MockLyricsRepository])
void main() {
  final repository = LyricsRepositoryImpl();
  final usecase = GetLyricsUsecase(repository);

  const String tTrackId = '32016690';

  test("Deve pegar uma letra de música", () async {
    final test = await usecase.execute(tTrackId);

    expect(test.isRight(), equals(true));
  });
}
