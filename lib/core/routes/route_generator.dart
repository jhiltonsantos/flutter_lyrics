import 'package:flutter/material.dart';
import 'package:flutter_lyrics/core/routes/routes.dart';
import 'package:flutter_lyrics/feature/lyrics_app/presentation/pages/splash_page.dart';

class RouteGenerator {
  static final errorPage = MaterialPageRoute(builder: (_) {
    return const Scaffold(
      body: Center(child: Text('Error Routes')),
    );
  });

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    final routeName = settings.name;

    switch (routeName) {
      case splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
          settings: const RouteSettings(name: splashRoute),
        );

      default:
        return errorPage;
    }
  }
}
