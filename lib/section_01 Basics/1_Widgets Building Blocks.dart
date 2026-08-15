import 'package:flutter/material.dart';

main(){
  runApp(
    MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.red)),
      home: HomeScreen2(),
    ),
  );
}


class HomeScreen2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App Title"),
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}