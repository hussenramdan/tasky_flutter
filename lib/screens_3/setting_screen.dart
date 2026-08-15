import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget{
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}



class _SettingScreenState extends State<SettingScreen> {
  String username = "Guest";
  @override
  void initState()
  {
    getUsername();
    super.initState();
  }
  Future<void> getUsername()async{
    final prefs = await SharedPreferences.getInstance();

    username = prefs.getString("username") ?? "Guest";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Column(
          children : [
            Text("username"),
          ],
        ),
      ) ,
    );
  }

}