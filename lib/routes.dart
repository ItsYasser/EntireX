import 'package:flutter/material.dart';
import 'package:entire/Screens/cart_screen.dart';
import 'package:entire/Screens/favorites_screen.dart';
import 'package:entire/Screens/home_screen.dart';
import 'package:entire/Screens/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (ctx) => HomeScreen(),
  CartScreen.routeName: (ctx) => CartScreen(),
  FavoriteScreen.routeName: (ctx) => FavoriteScreen(),
  ProfileScreen.routeName: (ctx) => ProfileScreen(),
};
