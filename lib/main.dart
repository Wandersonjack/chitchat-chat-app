import 'package:chitchat/screens/home_screen.dart';
import 'package:chitchat/utilities/const.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Color(kAccentColor)
      ),
      home: HomeScreen(),
      debugShowMaterialGrid: false,

      debugShowCheckedModeBanner: false,
    );
  }
}
