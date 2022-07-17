import 'package:flutter/material.dart';

import '../bootstrap.dart';
import '../component/appbar_component.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitialViewState();
}

class InitialViewState extends State<InitialView> {
  SizedBox _divider() => const SizedBox(height: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent().createAppBar(context),
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
              _divider(),
              ElevatedButton(
                onPressed: () {
                  context
                      .findAncestorStateOfType<BootstrapState>()
                      ?.handleBrightnessChange();
                },
                child: const Text('Change Theme Mode'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
