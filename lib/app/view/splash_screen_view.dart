import 'package:flutter/material.dart';

import '../model/splash_screen_model.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final SplashScreenModel _controller = SplashScreenModel();

  @override
  void initState() {
    super.initState();
    _controller.pushReplecement(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.hourglass_bottom,
                size: 42,
              ),
              SizedBox(
                height: 12,
              ),
              Text('Loading...')
            ],
          )
        ],
      ),
    );
  }
}
