import 'package:flutter/material.dart';
import 'package:portfolio/screens_3/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens_3/welcome_screen.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final pref = await SharedPreferences.getInstance();

  String? username = pref.getString('username');


  runApp( MyApp(username: username ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.username});

  final String? username;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tasky",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: username == null ?  WelcomeScreen() : HomeScreen(),
    );
  }
}
