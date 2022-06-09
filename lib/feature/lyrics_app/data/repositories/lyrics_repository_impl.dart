// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter_lyrics/core/app/app_constants.dart';
import 'package:flutter_lyrics/core/connection/web_client.dart';
import 'package:flutter_lyrics/core/constants/status_code_constants.dart';
import 'package:flutter_lyrics/feature/lyrics_app/data/models/lyrics_model.dart';
import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/template_lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/lyrics_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

// http://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=32016690&apikey=77433270cf4522cb6e2c8cbc82d510f7

@Injectable(as: LyricsRepository)
class LyricsRepositoryImpl implements LyricsRepository {
  FunctionForGetLyrics function = FunctionForGetLyrics();

  @override
  Future<Either<Failure, LyricsModel>> getLyrics(String track) async {
    final http.Response response = await function.requestGetLyrics(track);

    if (!function.isRequestValid(response)) {
      return Left(ServerFailure());
    }
    return Right(function.returnLyricsModel(response));
  }
}

class FunctionForGetLyrics {
  Future<http.Response> requestGetLyrics(String track) async {
    return await client.get(Uri.parse(
        "${AppConstants.API_GET_LYRICS}track_id=$track&apikey=${AppConstants.API_KEY}"));
  }

  bool isRequestValid(http.Response response) {
    TemplateLyricsEntity dataApi =
        TemplateLyricsEntity.fromJson(getJson(response));
    if (response.statusCode == StatusCode.OK) {
      if (getStatusCodeFromDataApi(dataApi) != StatusCode.OK) {
        return false;
      }
      return true;
    }
    return false;
  }

  Map<String, dynamic> getJson(http.Response response) {
    return json.decode(response.body);
  }

  int? getStatusCodeFromDataApi(TemplateLyricsEntity dataApi) {
    return dataApi.message!.header!.statusCode;
  }

  LyricsModel returnLyricsModel(http.Response response) {
    return LyricsModel.fromJson(getJson(response));
  }
}
