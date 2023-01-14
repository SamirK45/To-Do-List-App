import 'package:flutter/material.dart';
import 'package:to_do_list/screens/task_screen.dart';

// ignore: must_be_immutable

class TaskTile extends StatelessWidget{

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkBoxCallBack;
  final void Function() longPressCallBack;


  const TaskTile({required this.isChecked, required this.taskTitle,required this.checkBoxCallBack,required this.longPressCallBack});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      leading: Icon(Icons.edit,size: 30,),
      title:
      Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),

      trailing:
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged:checkBoxCallBack,
          )

    );
  }
}

// class CheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final void Function(bool?) toggleCheckBox;
//
//   const CheckBox(this.checkBoxState, this.toggleCheckBox);
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
