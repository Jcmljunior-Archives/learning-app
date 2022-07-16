import '../model/counter_model.dart';

class CounterController {
  static final CounterController _controller = CounterController._internal();

  factory CounterController() => _controller;

  CounterController._internal();

  CounterModel counter = CounterModel(count: 0);
}
