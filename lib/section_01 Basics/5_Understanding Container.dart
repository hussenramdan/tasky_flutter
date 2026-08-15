import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color:  Colors.red,
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
        title: Text("App "),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
                color: Colors.red,
                width: 20),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text("Usama"),
          ),
        ),
      ),
    );
  }
}