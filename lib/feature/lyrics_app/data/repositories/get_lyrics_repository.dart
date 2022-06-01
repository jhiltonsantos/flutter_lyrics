// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter_lyrics/core/app/app_constants.dart';
import 'package:flutter_lyrics/core/connection/web_client.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/get_lyrics_entity.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/entities/lyrics/lyrics_entity.dart';
import 'package:flutter_lyrics/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_lyrics/feature/lyrics_app/domain/repositories/i_get_lyrics_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

// http://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=32016690&apikey=77433270cf4522cb6e2c8cbc82d510f7

@Injectable(as: IGetLyricsRepository)
class GetLyricsRepository implements IGetLyricsRepository {
  @override
  Future<Either<Failure, Lyrics>> getLyrics(String track) async {
    int FIRST_ELEMENT = 0;
    final http.Response response = await client.get(Uri.parse(
        "${AppConstants.API_GET_LYRICS}track_id=$track&apikey=${AppConstants.API_KEY}"));

    if (response.statusCode != 200) {
      return Left(ServerFailure());
    }
    final List<GetLyrics> decodedLyricsJson = jsonDecode(response.body);
    final Lyrics lyrics = decodedLyricsJson[FIRST_ELEMENT].message.body.lyrics;
    return Right(lyrics);
  }
}
