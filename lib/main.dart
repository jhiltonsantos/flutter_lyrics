import 'package:flutter/material.dart';
import 'package:flutter_lyrics/core/app/app_widget.dart';
import 'package:flutter_lyrics/core/injection/injection.dart';

// https://resocoder.com/flutter-clean-architecture-tdd/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const AppWidget());
}
