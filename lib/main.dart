import 'package:banking_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Account App UI',
      theme: ThemeData(fontFamily: 'Mukta'),
      home: HomeScreen(),
    );
  }
}
