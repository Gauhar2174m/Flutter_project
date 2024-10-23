import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  /// getValue
  int getCount() => _count; // make the function

  /// events
  void incrementCount() {
    _count++;
    notifyListeners(); // Calling manadatory for updating the data
  }

  void decrementCount() {
    if (_count > 0) // condition
      _count--;
    notifyListeners(); // call the function becouse here be  data change
  }
}
