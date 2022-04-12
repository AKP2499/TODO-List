import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/view/task_screen.dart';

import 'model/task_data.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider.value(
       value:  TaskData(),
    )
    ],
        child: MaterialApp(
          home: TaskScreen(),
        )
    );

  }
}
