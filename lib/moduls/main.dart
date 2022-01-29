import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary:  Color.fromRGBO(244,0,20,0.9),
          )),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      );
  }
}

