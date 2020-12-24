import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/SignUPScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SignUpScreen(),
    );
  }
}