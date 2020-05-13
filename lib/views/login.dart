import 'package:flutter/material.dart';
import 'package:test_app/constants/tokens/colors.dart';
import 'package:test_app/screens/homepage.dart';
import 'package:test_app/widgets/todays_tasks.dart';
import '../constants/routes_path.dart' as routes;
import '../constants/dimensions.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<LoginView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Center(
          child: new SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 16.0,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                  //width: loginContentWidth,
                  //height: 100,
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('assets/images/house.jpg'),
                  ),
                ),
                Container(
                    width: loginContentWidth,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Maximize your productivity on your homestead by joining now',
                      style: TextStyle(
                          color: colorCustomOrange,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),

                Container(
                  height: 16.0,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                    width: loginContentWidth,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.black54, fontSize: 20),
                    )),
                Container(
                  height: 16.0,
                ),
                Container(
                  width: loginContentWidth,
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  width: loginContentWidth,
                  padding: EdgeInsets.fromLTRB(
                      3 * cellSize, 3 * cellSize, 3 * cellSize, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: FlatButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    textColor: colorCustomOrange,
                    child: Text('Forgot Password'),
                  ),
                ),
                Container(
                    width: loginContentWidth,
                    height: 48,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: colorCustomOrange,
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.pushNamed(context, routes.HomepageRoute);
                      },
                    )),
                Container(
                    width: loginContentWidth,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: colorCustomOrange,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                Container(
                  width: loginContentWidth,
                  height: 24.0,
                  // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                // Container(
                //     width: loginContentWidth,
                //     padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       mainAxisSize: MainAxisSize.max,
                //       children: <Widget>[
                //         Container(
                //             color: Colors.pink[100],
                //             child: FlatButton(
                //               onPressed: () {
                //                 //forgot password screen
                //                 Navigator.pushNamed(
                //                      context, routes.HomepageRoute);
                //               },
                //               textColor: Colors.white,
                //               child: Text('Tasks'),
                //             )),
                //       ],
                //     )),
              ],
            ),
          ),
        ));
  }
}
