import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  List<String> _cargasId = [];
  List<String> get cargasId => _cargasId;
  set cargasId(List<String> value) {
    _cargasId = value;
  }

  void addToCargasId(String value) {
    cargasId.add(value);
  }

  void removeFromCargasId(String value) {
    cargasId.remove(value);
  }

  void removeAtIndexFromCargasId(int index) {
    cargasId.removeAt(index);
  }

  void updateCargasIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cargasId[index] = updateFn(_cargasId[index]);
  }

  void insertAtIndexInCargasId(int index, String value) {
    cargasId.insert(index, value);
  }
}
