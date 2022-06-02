import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void increamentCounter() {
    count++;
    notifyListeners();
  }
}
