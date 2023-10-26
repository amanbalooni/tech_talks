import 'package:flutter/material.dart';
import 'package:tech_talks/screens/home_page.dart';

import 'navbar/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Talks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffeef8ff)),
        useMaterial3: true,
      ),
      home: const BottomNavbar(),
    );
  }
}
