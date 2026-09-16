import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/task_model.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController taskNameController = TextEditingController();
  final TextEditingController taskDescriptionController = TextEditingController();
  bool isHighPriority = true;

  @override
  void dispose() {
    taskNameController.dispose();
    taskDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181818),
        centerTitle: false,
        title: const Text("New Task"),
        titleTextStyle: const TextStyle(color: Color(0xFFFFFCFC), fontSize: 20),
        iconTheme: const IconThemeData(color: Color(0xFFFFFCFC)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Form(
            key: _key,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Task Name",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFCFC),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),

                      TextFormField(
                        controller: taskNameController,
                        style: const TextStyle(color: Colors.white),

                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Please Enter Task Name";
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          hintText: 'Finish UI design for login screen',
                          hintStyle: const TextStyle(color: Color(0xFF606060)),
                          filled: true,
                          fillColor: const Color(0xFF282828),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        cursorColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Task Description",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFCFC),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: taskDescriptionController,
                        style: const TextStyle(color: Colors.white),
                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Please Enter Task Description";
                          }
                          return null;
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: 'Finish onboarding UI and hand off devs by Thursday',
                          hintStyle: const TextStyle(color: Color(0xFF606060)),
                          filled: true,
                          fillColor: const Color(0xFF282828),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        cursorColor: Colors.white,

                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('High Priority',
                              style: TextStyle(
                                color: Color(0xFFFFFCFC),
                                fontSize: 16,
                              )),

                          Switch(
                            value: isHighPriority,
                            onChanged: (bool value) {
                              setState(() {
                                isHighPriority = value;
                              });
                            },
                            activeTrackColor: const Color(0xFF15886C),
                          ),
                        ],
                      ),

                    ],
                  ),
                  ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF15BB6C),
                      foregroundColor: const Color(0xFFFFFCFC),
                      fixedSize: Size(MediaQuery.of(context).size.width, 40),
                    ),
                    onPressed: () async{
                      if (_key.currentState!.validate() ?? false ) {

                        TaskModel model = TaskModel(
                          taskName: taskNameController.text,
                          taskDescription: taskDescriptionController.text,
                          isHighPriority: isHighPriority,
                        );


                        // final task = <String, dynamic>{
                        //   "taskName": taskNameController.text,
                        //   "taskDescription": taskDescriptionController.text,
                        //   "isHighPriority": isHighPriority,
                        // };

                        final pref = await SharedPreferences.getInstance();

                        final taskJson = pref.getString('tasks');
                        List<dynamic> listTask = [];

                        if(taskJson != null ){
                          listTask = jsonDecode(taskJson);
                        }
                        listTask.add(model.toMap());
                        final taskEncode = jsonEncode(listTask);
                        await pref.setString("tasks", taskEncode);

                      }
                    },
                    label: const Text("Add Task"),
                    icon: const Icon(Icons.add),
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
