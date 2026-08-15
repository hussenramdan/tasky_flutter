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
            // Image(image: NetworkImage("data:image/jpeg;base64,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"),
            //     Padding (
            // padding : const EdgeInsets.only(bottom : 34),
            Image(
              image: AssetImage("assets/images/persona.jpg"),
              width: 100,
              height: 100,
            ),

            Padding(
              padding : const EdgeInsets.only(top: 34),
              child : Text (
                "Hi, I am Hussein,\nCreative\nTechnologist",
                textAlign : TextAlign.center,
                style : TextStyle(
                  fontSize: 32,
                  fontWeight :FontWeight.bold,
                  // color: Color.(0xFF212430),
                  color : Color.fromRGBO(33, 36, 61, 1),

                ),
              ),
            ),
            Padding(
              padding : const EdgeInsets.all(24.0),
              child: Text("Amet minim mollit ono deserunt ullamca est\n"
                  "sit aligua dolor do amet sint Velit officia\n"
                  "consequat duis enim velit mollit Exerciration\n"
                  "venim consequat sunt nostrud amet",
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