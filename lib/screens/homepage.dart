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
  const HomepageRoute({Key key}) : super(key: key);

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
                //     RaisedButton(
                //       child: Text('Animals'),
                //       onPressed: () => print("pressed animals");
                //        Navigator.pushNamed(context, HomepageRoute);
                //     ),
                Container(
                    //width: loginContentWidth,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                            color: colorCustomGrey,
                            child: RaisedButton(
                              onPressed: () {
                                //forgot password screen
                                Navigator.pushNamed(
                                    context, routes.HomepageRoute);
                              },
                              //textColor: Colors.white,
                              child: Text('Animals'),
                            )),
                        Container(
                            color: colorCustomGrey,
                            child: RaisedButton(
                              onPressed: () {
                                //forgot password screen
                                Navigator.pushNamed(
                                    context, routes.TodoListScreen);
                              },
                              //textColor: Colors.white,
                              child: Text('Tasks'),
                            )),
                      ],
                    )),

                // Container(
                //   width: 24.0,
                // ),
                // RaisedButton(
                //   child: Text('Tasks'),
                //   onPressed: () => print("pressed tasks");
                //    Navigator.pushNamed(context, TodoLists);
                // ),
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
