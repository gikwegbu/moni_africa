import 'package:flutter/cupertino.dart';

class NavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int get currentIndex => _currentIndex;
}
