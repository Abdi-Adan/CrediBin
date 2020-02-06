import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  _indicator(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
