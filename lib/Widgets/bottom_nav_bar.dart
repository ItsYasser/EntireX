import 'package:entire/Providers/screens_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = Provider.of<ScreenProvider>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), topLeft: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          rippleColor: Theme.of(context).primaryColor,
          hoverColor: Theme.of(context).primaryColor,
          gap: 8,
          activeColor: Colors.white,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: Theme.of(context).primaryColor,
          color: Colors.grey,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              // iconColor: Colors.white,
              // iconActiveColor: Colors.white,
              onPressed: () {},

              icon: Icons.shopping_cart,
              text: 'Cart',
              // leading: Icon(Icons.shopping_cart, color: Colors.grey),
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
          selectedIndex: screen.navigatorValue,
          onTabChange: (index) {
            screen.changeSelectedValue(index);
          },
        ),
      ),
    );
  }
}
