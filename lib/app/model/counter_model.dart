class CounterModel {
  int count = 0;

  CounterModel({required this.count});

  void increment() => count += 1;
  void decrement() => count -= 1;
}
