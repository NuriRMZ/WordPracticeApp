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

  List<bool> _isSelectedList = [];
  List<bool> get isSelectedList => _isSelectedList;
  set isSelectedList(List<bool> value) {
    _isSelectedList = value;
  }

  void addToIsSelectedList(bool value) {
    isSelectedList.add(value);
  }

  void removeFromIsSelectedList(bool value) {
    isSelectedList.remove(value);
  }

  void removeAtIndexFromIsSelectedList(int index) {
    isSelectedList.removeAt(index);
  }

  void updateIsSelectedListAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    isSelectedList[index] = updateFn(_isSelectedList[index]);
  }

  void insertAtIndexInIsSelectedList(int index, bool value) {
    isSelectedList.insert(index, value);
  }

  String _btnTalk = 'Konuş';
  String get btnTalk => _btnTalk;
  set btnTalk(String value) {
    _btnTalk = value;
  }

  String _stt = 'Konuş';
  String get stt => _stt;
  set stt(String value) {
    _stt = value;
  }
}
