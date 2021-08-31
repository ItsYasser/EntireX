import 'package:entire/Providers/screens_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Widgets/bottom_nav_bar.dart';

class ControlScreens extends StatelessWidget {
  static String routeName = "ControlScreens";
  @override
  Widget build(BuildContext context) {
    var screen = Provider.of<ScreenProvider>(context);
    return Scaffold(
      extendBody: true,
      body: screen.currentScreen,
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
