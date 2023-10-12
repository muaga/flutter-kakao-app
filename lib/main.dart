import 'package:fltter_kakao_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

// Bottom Navigation Bar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0.0,
            backgroundColor: Colors.white,
          ),
          textTheme: TextTheme()),
      home: MainScreen(),
    );
  }
}
