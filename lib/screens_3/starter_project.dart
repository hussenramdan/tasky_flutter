import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget{
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tasky",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body : SafeArea(
          child : Center(
            child : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children :[
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo2.png'),
                        height: 42,
                        width: 42,
                      ),
                      SizedBox(width: 16),
                      Text("Tasky",
                          style : TextStyle(
                            color : Color(0xFFFFFFFF),
                            fontSize: 28,
                            fontWeight : FontWeight.w400,
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 118),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome To Tasky",
                        style: TextStyle(
                          color: Color(0XFFFFFCFC),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      Image(
                        image: AssetImage('assets/images/hands.png'),
                        height : 35,
                      ),
                    ],
                  ),

                  SizedBox(height: 8),
                  Text("Your Productivity journey starts here",
                      style: TextStyle(
                        color: Color(0XFFFFFCFC),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}

