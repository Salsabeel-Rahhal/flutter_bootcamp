import 'package:flutter/material.dart';

//change notifier to notifay all widgets has the same shared datat when it change
class MyCounter extends ChangeNotifier {
  int counter = 0;

  inc() {
    //the data has been changed
    counter++;
    //to notifay widgets
    notifyListeners();
  }
}
