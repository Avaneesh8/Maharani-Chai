import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _CompacView = prefs.getBool('ff_CompacView') ?? _CompacView;
    });
    _safeInit(() {
      _abcd = prefs.getBool('ff_abcd') ?? _abcd;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _CompacView = false;
  bool get CompacView => _CompacView;
  set CompacView(bool _value) {
    _CompacView = _value;
    prefs.setBool('ff_CompacView', _value);
  }

  bool _abcd = false;
  bool get abcd => _abcd;
  set abcd(bool _value) {
    _abcd = _value;
    prefs.setBool('ff_abcd', _value);
  }

  bool _Showfulllist = true;
  bool get Showfulllist => _Showfulllist;
  set Showfulllist(bool _value) {
    _Showfulllist = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
