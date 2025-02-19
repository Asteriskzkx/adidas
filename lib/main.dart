import 'package:adidas/homescreen.dart';
import 'package:adidas/homescreen_navi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        home: const HomescreenNavi()),
  );
}
