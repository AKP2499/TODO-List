import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/compoment/custom_conatiner.dart';
import 'package:todo_task/model/task_data.dart';
import 'package:todo_task/view/widget/task_list.dart';

import 'add_taskscreen.dart';
class TaskScreen extends StatelessWidget {
late TaskData taskData;
  @override
  Widget build(BuildContext context) {
    Provider.of<TaskData>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
          backgroundColor: Colors.grey,
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child:  AddTaskScreen(),
                    )
                )
            );
          }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0,),
                const Text(
                  'TODO',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Total Tasks ${Provider.of<TaskData>(context).taskCount}",
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  width: MediaQuery.of(context).size.width,
                  height: 5,

                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
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
