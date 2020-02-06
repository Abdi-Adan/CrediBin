import 'package:credi_bin/Initialize/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halisi',
      theme:
          ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
      home: SplashPage(),
    );
  }
}