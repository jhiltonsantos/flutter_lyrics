import 'package:flutter/material.dart';
import 'package:flutter_lyrics/core/routes/route_generator.dart';
import 'package:flutter_lyrics/core/routes/routes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      initialRoute: splashRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
