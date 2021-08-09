import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Screen/MainPage/MainPage.dart';
import 'Screen/Theme.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  debugPaintSizeEnabled = false;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
    theme: mytheme(),
  ));
}
