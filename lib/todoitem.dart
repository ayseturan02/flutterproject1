import 'package:flutter/material.dart';
import 'package:flutterproject1/constants/tasktype.dart';

import 'model/task.dart';

class TodoItem extends StatefulWidget{
  const TodoItem({super.key,required this.task});
  final Task task;
  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;
  @override

  Widget build(BuildContext context){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
// if() {...} --> a==5 ? Doğru : Yanlış  --->ternary operation
          widget.task.type == TaskType.note
              ? Image.asset("lib/assets/images/Category.png")
              : Image.asset("lib/assets/images/Category1.png"),

            Column(
              children: [
                Text(
                  widget.task.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                Text(widget.task.description)
              ],
            ),

            Checkbox(value: isChecked, onChanged: (val) => {
              setState((){
                isChecked=val!;  // ! val değişkeni varsa işleme koy
              })
            })
          ],
        ),
      ),
    );
  }
}