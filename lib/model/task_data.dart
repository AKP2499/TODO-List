import 'dart:collection';
import 'package:flutter/cupertino.dart';

class TaskData extends ChangeNotifier{
   List<Task> _taskList=[
    Task(name: 'Buy milk'),
    Task(name: "Buy Egg"),
    Task(name: "Buy bread"),
  ];

  List<Task> get taskList => _taskList;

  set taskList(List<Task> value) {
    _taskList = value;
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_taskList);
  }
  int get taskCount{
    return taskList.length;
  }
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    taskList.add(task);
    notifyListeners();
  }
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}

class Task {
  final String? name;
  bool isDone;
  Task({this.name,this.isDone=false});
  void toggleDone(){
    isDone = !isDone;
  }
}