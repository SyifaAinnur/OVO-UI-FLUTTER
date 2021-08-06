import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Screen/MainPage/MainPage.dart';
import 'Screen/Theme.dart';
void main(List<String> args) {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
    theme: mytheme(),
  ));
}
