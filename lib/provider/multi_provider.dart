import 'package:flutter/material.dart';

class MultiProviderClass with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void multiProviderfun() {
    _value++;
  }

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
