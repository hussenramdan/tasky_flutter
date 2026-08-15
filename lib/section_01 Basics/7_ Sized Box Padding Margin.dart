import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red,
        ),
      ),
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Container(
        color: Colors.red,
        padding : EdgeInsets.all(5),
        margin : EdgeInsets.all(20),
        child: Row(
          children : [
            Text("Usama"),
            SizedBox(width: 20),
            Text("Elgendy"),
          ],
        ),
      ),
    );
  }
}