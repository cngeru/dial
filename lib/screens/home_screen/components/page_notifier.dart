import 'package:flutter/material.dart';

class PageNotifier extends ChangeNotifier {
  PageController pageController = PageController(viewportFraction: 0.6);
  double currentCard = 0;

  PageNotifier() {
    pageController.addListener(() {
      currentCard = pageController.page;
      notifyListeners();
    });
  }
}
