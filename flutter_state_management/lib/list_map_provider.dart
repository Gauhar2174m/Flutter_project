import 'package:flutter/material.dart';

// class ListMapProvidere extends ChangeNotifier {
//   List<Map<String, dynamic>> _mData = [];
//   List<Map<String, dynamic>> getData() =>
//       _mData; // make function for geting The Data

//   /// events
//   void addData(Map<String, dynamic> data) {
//     _mData.add(data);
//     notifyListeners();
//   }
// }

class ListMapProvidere extends ChangeNotifier {
  List<Map<String, dynamic>> _mData = [];

  List<Map<String, dynamic>> getData() => _mData;

  void addData(Map<String, dynamic> data) {
    _mData.add(data);
    notifyListeners();
  }
}
