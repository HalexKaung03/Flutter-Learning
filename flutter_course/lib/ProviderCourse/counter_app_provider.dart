import 'dart:developer';

import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int count = 0;
  int number = 0;

  void increase() {
    count++;
    log('Count : $count');
    notifyListeners();
  }

  void increaseNumber() {
    number++;
    log('Number : $number');
    notifyListeners();
  }
}
