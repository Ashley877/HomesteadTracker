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
import 'todo_list.dart';
import 'todo_list_screen.dart';
import 'new_todo_dialog.dart';
import 'todo.dart';

class HomepageRoute extends StatefulWidget {
  final bool animals;
  const HomepageRoute({Key key, this.animals = true}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomepageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: colorCustomGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('May 8, 2020', style: TextStyle(fontSize: 36)),
            Container(
              height: 44.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routes.HomepageRoute,
                        arguments: true);
                  },
                  textColor: Colors.black,
                  child: Text('Animals'),
                ),
                Container(width: 12),
                RaisedButton(
                  color: secondGrey,
                  onPressed: () {
                    //forgot password screen
                    Navigator.pushNamed(context, routes.TodoListScreen);
                  },
                  textColor: Colors.black,
                  child: Text('Tasks'),
                )
              ],
            ),
            Container(
              height: 44.0,
            ),
            //CurrentTasks(),
            ExpansionList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}
