import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';
import 'package:to_do_list/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(

        create: (BuildContext context) { return TaskData(); },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TaskScreen(),
        ),
    );
  }
}

