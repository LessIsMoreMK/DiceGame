import 'dart:math';

import 'package:flutter/material.dart';

final Random randomizer = Random();

class PlayerData extends ChangeNotifier {
  String _name;
  List<int> _values = [1, 1, 1, 1, 1];
  List<bool> _locks = [false, false, false, false, false];

  PlayerData() {}
  /*void setName(String name) {
    _name = name;
    notifyListeners();
  }*/
  set name(String name) {
    _name = name;
    notifyListeners();
  }

  /*String getName() {
    return _name;
  }*/
  String get name {
    return _name;
  }

  void randomizeValues() {
    for (int i = 0; i < _values.length; i++) {
      if (_locks[i] == false) {
        _values[i] = randomizer.nextInt(6) + 1;
      }
      notifyListeners();
    }
  }

  List<int> get values {
    return List<int>.unmodifiable(_values);
  }

  List<bool> get locks {
    return List<bool>.unmodifiable(_locks);
  }

  void toggleLock(int index) {
    //if (index >= 0 && index < _locks.length)
    index = RangeError.checkValidIndex(index, _locks);
    _locks[index] = !_locks[index];
    notifyListeners();
  }
}

class Player2Data extends PlayerData {}

class Player1Data extends PlayerData {}
