import 'package:flutter/material.dart';

class OneTest extends StatefulWidget {
  @override
  _OneTestState createState() => _OneTestState();
}

class _OneTestState extends State<OneTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TestPage"),
        backgroundColor: Colors.blue,
      ),
      body: Container(),
    );
  }
}
