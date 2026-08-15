import 'package:flutter/material.dart';

main(){
  runApp(
    MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.red)),
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("App Title"),
      ),
      body : Center(
        child : Column (
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Usama"),
              Text("Elgndy"),
            ]
        ),
      ),
    );
  }
}



class HomeScreen2 extends StatefulWidget{
  const HomeScreen2({super.key});
  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2>{
  @override
  Widget build(BuildContext context){
    return const Placeholder();
  }
}