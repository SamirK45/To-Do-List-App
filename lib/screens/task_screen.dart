import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/screens/menu.dart';
import 'package:to_do_list/widgets/task_tile.dart';
import 'package:to_do_list/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'add_task_screen.dart';
import 'package:to_do_list/models/task_data.dart';

bool isChecked = false;

class TaskScreen extends StatefulWidget {

  @override
  State<TaskScreen> createState() => _TaskScreenState();

}

class _TaskScreenState extends State<TaskScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen(),
                      ),
                    ));
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                   onPressed:() {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const Menu()),
                     );

                     },
                  child: CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlue,
                      size: 50,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'To-Do-List',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tasks Left : ${Provider.of<TaskData>(context).taskCount}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
