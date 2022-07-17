import 'package:flutter/material.dart';

import '../bootstrap.dart';
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.hourglass_bottom,
                size: 42,
                color: context
                            .findAncestorStateOfType<BootstrapState>()
                            ?.getUseLightMode() ==
                        true
                    ? Colors.white
                    : Colors.black,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Loading...',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
