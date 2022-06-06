// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/lyrics_app/data/repositories/lyrics_repository_imp.dart'
    as _i4;
import '../../feature/lyrics_app/domain/repositories/lyrics_repository.dart'
    as _i3;
import '../../feature/lyrics_app/domain/usecases/lyrics/get_lyrics_usecase.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.LyricsRepository>(() => _i4.LyricsRepositoryImp());
  gh.factory<_i5.GetLyricsUsecase>(
      () => _i5.GetLyricsUsecase(get<_i3.LyricsRepository>()));
  return get;
}
