import 'package:flutter/material.dart';
import 'package:test_app/screens/todo.dart';
import 'package:test_app/screens/todo_list_screen.dart';
import 'todo_list.dart';

class NewTodoDialog extends StatelessWidget {
  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New todo'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            final todo = new Todo(title: controller.value.text);
            controller.clear();

            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}
