import '../model/splash_screen_model.dart';

class SplashScreenController {
  static final SplashScreenController _controller =
      SplashScreenController._internal();

  factory SplashScreenController() => _controller;

  SplashScreenController._internal();

  SplashScreenModel splashScreenModel = SplashScreenModel();
}
