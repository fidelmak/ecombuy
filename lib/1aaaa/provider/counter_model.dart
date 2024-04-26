import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;
  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    if (_counter == 0) {
      _counter;
    } else {
      _counter--;
    }
    notifyListeners();
  }

  int get currentCount => _counter;
}
