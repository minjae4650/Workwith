import 'package:flutter/material.dart';

class memoClick with ChangeNotifier{
  bool showMemoUI = false;

  void toggleView() {
    showMemoUI = !showMemoUI;
    notifyListeners();
  }
}