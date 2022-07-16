import 'package:flutter/material.dart';

import '../controller/counter_controller.dart';
import '../component/button_component.dart';
import '../component/dialog_component.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitialViewState();
}

class InitialViewState extends State<InitialView> {
  final CounterController _controller = CounterController();

  void increment() {
    setState(() {
      _controller.counter.increment();
    });
  }

  void decrement() {
    setState(() {
      _controller.counter.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning App'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            position: PopupMenuPosition.under,
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: null,
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("Setting"),
                  ],
                ),
              ),
            ],
          ),
        ],
        // backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_controller.counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: increment,
                  child: const Text('Increment'),
                ),
                const SizedBox(
                  width: 6,
                ),
                OutlinedButton(
                  onPressed: decrement,
                  child: const Text('Decrement'),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                DialogComponent(),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: const ButtonComponent(),
    );
  }
}
