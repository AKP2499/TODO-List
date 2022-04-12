import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/model/task_data.dart';
import 'package:todo_task/view/widget/task_tile.dart';
class TasksList extends StatelessWidget {
   TasksList({Key? key}) : super(key: key);
late TaskData taskData;
  @override
  Widget build(BuildContext context) {
    taskData=Provider.of<TaskData>(context,listen: true);
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = taskData.tasks[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkBoxCallback: (v) {
            taskData.updateTask(task);
          },
          longPressCallback: () {
            taskData.deleteTask(task);
          },
        );
      },
      itemCount: taskData.taskCount,
    );
  }
}

