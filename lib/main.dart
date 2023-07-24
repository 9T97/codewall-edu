import 'package:codewall_tachnology/pages/onboard_screen2.dart';
import 'package:codewall_tachnology/pages/splash_screen.dart';
import 'package:codewall_tachnology/pages/onboard_screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeWall Technology',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes,
      
    );

  }
}
var routes = <String,WidgetBuilder> {
  "/welcome":(BuildContext context) => WelcomeScreen(),
};
