import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
        Color(0xFF6DADFC),
    Color(0xFF0188E9),
    ],)

        ) ,
        width: double.infinity,


        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/images/blue2.png'),
          Text("Nike store",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),),
          Text("www.nike.com"),

          ],
        ),
      ),
    );
  }
}
