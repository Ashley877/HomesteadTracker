import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'views/login.dart';
import 'constants/routes_path.dart' as routes;
import 'screens/homepage.dart';
import 'main.dart';
import 'screens/todo_list.dart';
import 'screens/todo_list_screen.dart';
import 'screens/todo_list.dart';
import 'screens/new_todo_dialog.dart';
import 'screens/undefined.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case routes.LoginRoute:
//       return MaterialPageRoute(builder: (context) => LoginView());
//     case routes.HomepageRoute:
//       return MaterialPageRoute(builder: (context) => routes.HomepageRoute());
//     case routes.ToDoList:
//     //  var foodId = settings.arguments as String;
// //   return MaterialPageRoute(builder: (context) => DetailsView(id: foodId));
// // case routes.PagesRoute:
// //   return MaterialPageRoute(builder: (context) => PagesView());
// // case routes.DotsRoute:
// //   return MaterialPageRoute(builder: (context) => DotsView());
// // case routes.PlaygroundRoute:
// //   return MaterialPageRoute(builder: (context) => PlaygroundView());
// //     default:
// //       return MaterialPageRoute(
// //           builder: (context) => UndefinedView(name: settings.name));
//   }
// }
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    case routes.HomepageRoute:
      return MaterialPageRoute(builder: (context) => HomepageRoute());
    //case routes.DetailsRoute:
    // var foodId = settings.arguments as String;
    //  return MaterialPageRoute(builder: (context) => DetailsView(id: foodId));
    case routes.TodoListScreen:
      return MaterialPageRoute(builder: (context) => TodoListScreen());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(name: settings.name));
  }
}
