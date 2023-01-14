
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Tasks>_tasks =[
    Tasks(name:'buy milk'),
    Tasks(name:'buy eggs'),
    Tasks(name:'buy bread'),

  ];

  UnmodifiableListView<Tasks>? get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }

  void addTask(String taskTitle){
    final task = Tasks(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks tasks){
    tasks.toggleDone();
    notifyListeners();
  }


  void deleteTask(Tasks tasks){
    _tasks.remove(tasks);
    notifyListeners();
  }
}