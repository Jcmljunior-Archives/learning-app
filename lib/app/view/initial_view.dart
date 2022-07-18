import 'package:flutter/material.dart';

import '../component/appbar_component.dart';
import '../controller/initial_controller.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitialViewState();
}

class InitialViewState extends State<InitialView> {
  final InitialController _controller = InitialController();

  void handleIncrement() {
    setState(() {
      _controller.setIncrement();
    });
  }

  void handleDecrement() {
    setState(() {
      _controller.setDecrement();
    });
  }

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
              Text(
                '${_controller.count}',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      handleIncrement();
                    },
                    child: const Text('Incrementar'),
                  ),
                  const SizedBox(width: 6),
                  ElevatedButton(
                    onPressed: () {
                      handleDecrement();
                    },
                    child: const Text('Decrementar'),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
