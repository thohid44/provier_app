import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:provider/provider.dart';

class HomeController extends ChangeNotifier {
  var _count = 0;

  int get getCounter {
    return _count;
  }

  void increment() {
    _count = _count + 1;
    notifyListeners();
  }
}
