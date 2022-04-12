import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/compoment/button_widget.dart';
import 'package:todo_task/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
   AddTaskScreen({Key? key}) : super(key: key);
  late TaskData taskData;
  @override
  Widget build(BuildContext context) {
    taskData=Provider.of<TaskData>(context,listen: true);
    String? newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.orange.shade700,
                fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:  Colors.orange),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
              cursorColor: Colors.orange,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            CustomButton(
              elevation: 10,
              height: 50,
              backgroundColor: Colors.orange,
              textWidget: const Center(
                child: Text("Add"),
              ),
              onTap:(){
                print("Opntap");
                taskData.addTask(newTaskTitle!);
                Navigator.pop(context);
              } ,
            )
            // MaterialButton(
            //   child: const Text(
            //     'Add',
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            //   color: Colors.lightBlueAccent,
            //   onPressed: () {
            //     Provider.of<TaskData>(context).addTask(newTaskTitle!);
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
