import 'package:flutter/material.dart';

class SplashScreenController {
  Future<void> pushReplecement(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed('/initial');
  }
}
