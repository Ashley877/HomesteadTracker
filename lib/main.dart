// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'views/login.dart';
//import 'models/animal.dart';
import 'models/animals.dart';
import 'constants/tokens/colors.dart';
import 'constants/tokens/fonts.dart';
import 'services/navigation_service.dart';
import 'widgets/bottom_nav.dart';
import 'screens/homepage.dart';
import 'constants/routes_path.dart' as routes;
import 'router.dart' as router;
import 'locator.dart';

// import 'package:gallery/l10n/gallery_localizations.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//             primarySwatch: colorCustomGrey, bottomAppBarColor: colorCustomGrey
//             // primarySwatch: Colors.grey,
//             ),
//         home: Homepage()
//         BottomNavigationDemo( type: BottomNavigationDemoType.withoutLabels ) // MyHomePage(title: 'Flutter Demo Home Page'),
//              ),
//                 fontFamily: 'Montserrat',
//               ),
//               navigatorKey: locator<NavigationService>().navigatorKey,
//               onGenerateRoute: router.generateRoute,
//               initialRoute: routes.LoginRoute,
//         );
//    }
// //}
// //  }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maximize yourproductivity on your homestead by joining now',
      theme: ThemeData(
        primarySwatch: colorCustomGrey,
        bottomAppBarColor: colorCustomGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonTheme: ButtonThemeData(
          minWidth: 120,
          height: 40,
          buttonColor: colorCustomOrange,
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.accent,
        ),
        fontFamily: 'Roboto',
      ),
      home: LoginView(),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.LoginRoute,
    );
  }
}
