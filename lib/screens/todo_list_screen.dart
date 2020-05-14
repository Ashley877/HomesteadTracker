import 'package:flutter/material.dart';
import '../models/animals.dart';
import '../constants/tokens/colors.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/current_animals.dart';
import '../widgets/tasks.dart';
import '../widgets/expansion_list.dart';
import '../constants/routes_path.dart' as routes;
import '../router.dart' as router;
import '../services/navigation_service.dart';
import 'homepage.dart';
import 'todo.dart';
import 'new_todo_dialog.dart';
import 'todo_list.dart';
import 'homepage.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todos = [];

  _toggleTodo(Todo todo, bool isChecked) {
    setState(() {
      todo.isDone = isChecked;
    });
  }

  _addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );

    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todays Tasks')),
      body: TodoList(
        todos: todos,
        onTodoToggle: _toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
      bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}
