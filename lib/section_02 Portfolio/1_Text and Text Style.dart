import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Text (
                "Hi, I am Hussein,\nCreative\nTechnologist",
                textAlign : TextAlign.center,
                style : TextStyle(
                  fontSize: 32,
                  fontWeight :FontWeight.bold,
                  // color: Color.(0xFF212430),
                  color : Color.fromRGBO(33, 36, 61, 1),

                )
            ),
            Padding(
              padding : const EdgeInsets.all(24.0),
              child: Text("Amet minim mollit ono deserunt ullamca est\nsit aligua dolor do amet sint Velit officia\n consequat duis enim velit mollit Exerciration\n venim consequat sunt nostrud amet",
                textAlign: TextAlign.center,
                style : TextStyle(
                  fontSize: 16,
                  fontWeight : FontWeight.w400,
                  color: Color(0xFF212430),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}