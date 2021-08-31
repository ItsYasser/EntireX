import 'package:entire/Providers/screens_provider.dart';
import 'package:entire/control_screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ScreenProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EntireX',
        theme: ThemeData(
          primaryColor: Colors.orange,
          scaffoldBackgroundColor: Color(0xfff8f9fa),
        ),
        home: ControlScreens(),

        // HomeScreen(),
      ),
    );
  }
}
