import 'package:flutter/widgets.dart';

class MyModel with ChangeNotifier {
  String someValue = 'Hello';
  void doSomething() {
    someValue = 'Goodbye';
    notifyListeners();
    print(someValue);
  }
}
