import 'package:flutter/material.dart';
import 'package:flutter_lyrics/core/app/app_widget.dart';
import 'package:flutter_lyrics/feature/lyrics_app/data/repositories/get_lyrics_repository.dart';

void main() {
  GetLyricsRepository getLyrics = GetLyricsRepository();
  print(getLyrics.getLyrics("32016690"));

  runApp(const AppWidget());
}
