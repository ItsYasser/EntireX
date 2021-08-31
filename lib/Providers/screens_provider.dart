import 'package:entire/Screens/cart_screen.dart';
import 'package:entire/Screens/favorites_screen.dart';
import 'package:entire/Screens/home_screen.dart';
import 'package:entire/Screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';

class ScreenProvider extends ChangeNotifier {
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;
  Widget currentScreen = HomeScreen();
  void changeSelectedValue(int selectedValue) async {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          // currentScreen = HomeScreen();
          currentScreen = HomeScreen();
          break;
        }
      case 1:
        {
          currentScreen = CartScreen();
          break;
        }
      case 2:
        {
          currentScreen = FavoriteScreen();
          break;
        }
      case 3:
        {
          currentScreen = ProfileScreen();
          break;
        }
    }
    notifyListeners();
  }
}
