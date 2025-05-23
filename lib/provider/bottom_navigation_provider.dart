import 'package:flutter/material.dart';
import 'package:mintage_app/view/screens/home_screen/home_screen.dart';
import 'package:mintage_app/view/screens/menu_screen/menu_screeen.dart';
import 'package:mintage_app/view/screens/offers_screen/offers_screen.dart';

import '../view/screens/favorite_screen/favorite_screen.dart';
import '../view/screens/my_coins_screen/coins_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentIndex = 0;
  // Screens List
  /*=========================================================================
      Define ther screens we are going to navigate from botton navigation bar
      in bottomNavigationIndex list
    ========================================================================*/
  List<Widget> bottomNavigationIndex = [
    const HomeScreen(),
    const CoinsScreen(),
    const OffersScreen(),
    const FavoriteScreen()

  ];
  // set Current Index
  setCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }

  // Rest Index
  resetIndex() {
    currentIndex = 0;
    notifyListeners();
  }

/*=====================================
  APIs calling
 ======================================*/
  // Veriables
}
