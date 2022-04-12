import 'package:flutter/material.dart';
import 'package:todo_task/compoment/custom_conatiner.dart';

class TaskTile extends StatelessWidget {

final bool? isChecked;
final String? taskTitle;
final void Function(bool)  checkBoxCallback;
final VoidCallback? longPressCallback;

 TaskTile({required this.checkBoxCallback,this.isChecked,this.longPressCallback,this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomContainer(
        backgroundColor: isChecked!?Colors.orange:null,
        elevation: 10,
        height: 50,
        child: Card(
          elevation: 10,
          child: Center(
            child: Text(
              taskTitle!,
              style: TextStyle(
                  decoration: isChecked! ? TextDecoration.lineThrough : null),
            ),
          ),
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.orange,
        value: isChecked!,
        onChanged:(v)=>checkBoxCallback(v!)
      ),
      onLongPress: longPressCallback,
    );
  }
}
