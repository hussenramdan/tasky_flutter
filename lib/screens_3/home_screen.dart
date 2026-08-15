import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/screens_3/add_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? username = "Default";

  @override
  void initState() {
    super.initState();

    _loadUserName();
  }

  void _loadUserName() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      username = pref.getString('username');
    });

    print("username = $username");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF181818),

      floatingActionButton:SizedBox(
        height: 44,
        child: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return AddTask();
                      },
                    ),
                  );
        },
      backgroundColor: Color(0xFF15886C),
      foregroundColor: Color(0xFFFFFCFC),
        label: Text("Add New Task"),
        icon: Icon(Icons.add),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
      ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person2.png'),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Evening $username",
                        style: TextStyle(
                          color: Color(0xFFFFFCFC),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "One task at a time, One step closer",
                        style: TextStyle(
                          color: Color(0xFFC6C6C6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),

              Text("Yuhuu, Your Work ",
              style: TextStyle(
                color: Color(0xFFFFFCFC),
                fontSize: 32,

              )
              ),
              Row(
                children: [
                  Text("almost done!",
                      style: TextStyle(
                        color: Color(0xFFFFFCFC),
                        fontSize: 32,
                      ),
                  ),
                  Image(
                    image: AssetImage('assets/images/hands2.png'),
                    height: 32,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



// Spacer(),
// Align(
//   alignment: Alignment.bottomRight,
//   child: ElevatedButton.icon(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Color(0xFF15886C),
//
//       foregroundColor: Color(0xFFFFFCFC),
//       fixedSize: Size(168, 48),
//     ),
//     icon: Icon(Icons.add),
//     label: Text("Add New Task"),
//     onPressed: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (BuildContext context) {
//             return AddTask();
//           },
//         ),
//       );
//     },
//   ),
// ),