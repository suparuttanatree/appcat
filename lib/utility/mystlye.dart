import 'package:flutter/material.dart';

class MyStyle {
  BoxDecoration bgColor() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.white, Colors.yellow.shade400]));
  } //decoration : MyStyle().bgColor

  MyStyle();
}
