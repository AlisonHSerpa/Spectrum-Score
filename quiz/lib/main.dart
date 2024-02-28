// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:quiz/ASRS18.dart';

import 'homepage.dart';
import 'Resultado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Homepage(),
      'TDAH': (context) => Tdah(),
      Resultado.routename: (context) => Resultado(),
    });
  }
}
