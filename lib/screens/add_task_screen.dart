import 'package:flutter/material.dart';
import 'task_screen.dart';
import 'task_screen.dart';
import 'package:to_do_list/models/task.dart';

import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle="";
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add Tasks',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged:(newText){
                print(newText);
                newTaskTitle=newText;
              },
            ),
           SizedBox(height: 10,),
           SizedBox(
              height: 50,
             width: 100,
             child:  TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: Colors.lightBlueAccent
               ),
             onPressed: () {
                 Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                 Navigator.pop(context);
             },
             child: Text(
               'Add',style: TextStyle(
               color: Colors.white
             ),
               ),
             ),
           ),

          ],
        ),
      ),
    );
  }
}
