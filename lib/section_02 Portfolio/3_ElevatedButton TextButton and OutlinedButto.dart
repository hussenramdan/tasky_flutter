import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage("assets/images/persona.jpg"),
              width: 100,
              height: 100,
            ),

            const SizedBox(height: 34),

            const Text(
              "Hi, I am Hussein,\nCreative\nTechnologist",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(33, 36, 61, 1),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                "Amet minim mollit non deserunt ullamco est\n"
                    "sit aliqua dolor do amet sint. Velit officia\n"
                    "consequat duis enim velit mollit. Exercitation\n"
                    "veniam consequat sunt nostrud amet.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF212430),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF6464),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                padding : EdgeInsets.zero,
                fixedSize: Size(200, 48),
              ),
              child: const Text("Download Resume",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),

              ),
            ),


            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: Text("OutlineButton"),
            ),

            TextButton(
              onPressed: () {},
              child : Text("TextButton"),
            )
          ],
        ),
      ),
    );
  }
}