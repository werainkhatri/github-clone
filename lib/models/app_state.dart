import 'package:flutter/material.dart';

import '../constants.dart';

class AppState extends ChangeNotifier {
  int _homeState;

  int get homeState => _homeState;

  set homeState(int homeState) {
    _homeState = homeState;
    notifyListeners();
  }

  int _notificationState;

  int get notificationState => _notificationState;

  set notificationState(int notificationState) {
    _notificationState = notificationState;
    notifyListeners();
  }

  AppState() {
    homeState = 0;
    notificationState = C.notifications.length ~/ 2;
  }
}
