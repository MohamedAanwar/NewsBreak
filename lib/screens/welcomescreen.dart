import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/HomePage.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset(
                    "assets/news.png",
                    width: 120,
                    height: 120,
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "Welcome In NewsBreak",
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w900,
                        color: Colors.black87),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
