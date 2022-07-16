import 'package:flutter/material.dart';

import 'app/view/splash_screen_view.dart';
import 'app/view/initial_view.dart';

Map<String, WidgetBuilder> getAllRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const SplashScreenView(),
    '/initial': (BuildContext context) => const InitialView(),
  };
}

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: const ColorScheme.light(
        primary: Colors.purple,
        secondary: Colors.yellow,
        brightness: Brightness.light,
      ),
    ),
    initialRoute: '/',
    routes: getAllRoutes(),
  ));
}
