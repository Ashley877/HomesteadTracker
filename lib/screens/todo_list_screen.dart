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

// class TodoList extends StatefulWidget {
//   @override
//   _TodoListState createState() => _TodoListState();
// }

// class _TodoListState extends State<TodoList> {
//   static const _appTitle = 'Todo List';
//   final todos = <String>[];
//   final controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(_appTitle),
//         ),
//         body: Column(
//           children: [
//             TextField(
//               controller: controller,
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: todos.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   final todo = todos[index];

//                   return Dismissible(
//                     key: Key('$todo$index'),
//                     onDismissed: (direction) => todos.removeAt(index),
//                     child: ListTile(title: Text(todo)),
//                     background: Container(color: Colors.red),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               todos.add(controller.text);
//               controller.clear();
//             });
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

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
      appBar: AppBar(title: Text('Todo List')),
      body: TodoList(
        todos: todos,
        onTodoToggle: _toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),

      //   return Dismissible(
      //                 key: Key('$todo$index'),
      //                 onDismissed: (direction) => todos.removeAt(index),
      //                 child: ListTile(title: Text(todo)),
      //                 background: Container(color: Colors.red),
      //               );
      bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}
