import 'package:flutter/material.dart';

class CatagoriProvider extends ChangeNotifier {
  int selectedCategoryIndex = 0;

  void setSelectedCategory(int index) {
    selectedCategoryIndex = index;
    notifyListeners();
  }
}
