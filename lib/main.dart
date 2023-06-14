import 'package:flutter/material.dart';
import 'package:your_iki/screens/bottom_nav_bar_custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal IKI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBarCustom(),
    );
  }
}
