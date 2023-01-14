import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'task_tile.dart';
import 'package:to_do_list/screens/task_screen.dart';
import 'package:to_do_list/models/task.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  // final List<Tasks> tasks;
  //
  // const TasksList(this.tasks);



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (context,taskData,child){
           return ListView.builder(itemBuilder: (context,index){
             return TaskTile(
               isChecked: taskData.tasks![index].isDone,
               taskTitle:taskData.tasks![index].name,
               checkBoxCallBack:
                   (bool? newValue) {
                     taskData.updateTask(taskData.tasks![index]);
               },
               longPressCallBack: (){
                 taskData.deleteTask(taskData.tasks![index]);
               },
             );
           },itemCount: taskData.taskCount,
           );
        }



    );
  }
}