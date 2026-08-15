import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/screens_3/home_screen.dart';
import '/screens_3/starter_project.dart';



class WelcomeScreen extends StatelessWidget{
   WelcomeScreen({super.key});

  // String name = "";
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color(0xFF181818),
      body : SafeArea(
        child : Center(
          child : SingleChildScrollView(
          child : Form(
            key : _key ,
         child : Column(
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

                    // Svgpicture.asset('assets/images/hands.svg'),
                    Image(
                      image: AssetImage('assets/images/hands2.png'),
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
                SizedBox(height: 24),
                Image(
                  image: AssetImage(
                    "assets/images/work2.png"),
                      height : 200,
                      width: 215,
                ),

                    SizedBox(height: 24),

                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal : 16),

                    child : Column(
                    crossAxisAlignment  : CrossAxisAlignment.start,
                      children:
                      [
                        SizedBox(height: 24),

                        Text(
                          "Full Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      SizedBox(height: 8),

                        TextFormField(
                          controller : controller,
                          style : TextStyle(
                            color: Colors.white,
                          ),
                          validator: (String? value){

                            if(value == null || value.trim().isEmpty){
                              return "Please Enter Your Full Name";
                            }
                            return null;
                            print(value);
                          },
                          decoration: InputDecoration(
                              hintText: 'e.g Sara Khalid',
                              hintStyle: TextStyle(
                                color: Color(0xFF606060),
                              ),

                              filled: true,
                              fillColor: Color(0xFF282828),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide.none,
                              )),
                          cursorColor: Colors.white,
                        ),

                      SizedBox(height: 24),
                      ElevatedButton(
                        style : ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF15886C),
                          foregroundColor: Color(0xFFFFFCFC),
                          fixedSize: Size(MediaQuery.of(context).size.width,40),
                        ),

                        onPressed: () async {

                            if (_key.currentState?.validate() ?? false) {
                              final pref = await SharedPreferences.getInstance();
                              await pref.setString("username" , controller.value.text);
                                Navigator.pushReplacement(
                                  context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return HomeScreen();
                                },
                              ),
                            );
                          }else{
                             /// TODO: SnackBar
                          }
},
                        child : Text("Let's Get Started"),
                      ),
                    ],
                  ),
        ),
],
        ),
          ),

    ),
      ),
      ),
    );
  }
}