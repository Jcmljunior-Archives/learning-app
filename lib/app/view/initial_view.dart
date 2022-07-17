import 'package:flutter/material.dart';
import 'package:learning_app/app/bootstrap.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitialViewState();
}

class InitialViewState extends State<InitialView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              const Text(
                '0',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .findAncestorStateOfType<BootstrapState>()
                      ?.handleBrightnessChange();
                },
                child: const Text('Change Theme'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
