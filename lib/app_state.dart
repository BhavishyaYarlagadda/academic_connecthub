import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }

  String _bookingtime = '';
  String get bookingtime => _bookingtime;
  set bookingtime(String value) {
    _bookingtime = value;
  }

  bool _upcoming = false;
  bool get upcoming => _upcoming;
  set upcoming(bool value) {
    _upcoming = value;
  }

  bool _past = false;
  bool get past => _past;
  set past(bool value) {
    _past = value;
  }
}
