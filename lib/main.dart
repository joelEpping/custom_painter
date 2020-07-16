import 'package:custom_painter/pages/header_curvo.dart';
import 'package:custom_painter/pages/header_diagonal.dart';
import 'package:custom_painter/pages/header_waves.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Custom Painter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HeaderDiagonal());
  }
}
