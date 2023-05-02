import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
//Data inside the counter provider and listeners
  int counter = 0;

  updateCounter() {
    counter++;
    notifyListeners();
  }

//named function called without prabthesses
  //get counter => _counter; //.counter
}
