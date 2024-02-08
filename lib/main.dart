import 'package:flutter/material.dart';
import 'package:newsapp/screens/welcomescreen.dart';

void main() {
  ;
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
