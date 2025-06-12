import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier{
  int _counter = 9;

  int get counter => _counter;

  void increment(){
    _counter++;
    notifyListeners();
  }
}