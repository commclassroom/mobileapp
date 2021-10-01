import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobileapp/pages/homepage.dart';
import 'package:mobileapp/pages/splashscreen.dart';
import 'package:mobileapp/routes/routing.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark, // transparent status bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uni-Tap',
      // theme: ThemeData.dark(),

      initialRoute: MyRoutes.splashpage,
      routes: {
        MyRoutes.splashpage: (context) => SplashPage(),
        MyRoutes.homepage: (context) => HomePage(),
      },
    );
  }
}
