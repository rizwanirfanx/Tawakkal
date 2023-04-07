import 'package:flutter/material.dart';
import 'package:hey_taxi/all_screens.dart';
import 'package:hey_taxi/routes/routes.dart';
import 'package:hey_taxi/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF42A5F5);
    return MaterialApp(
      title: 'Twakkal',
      routes: routes,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue ,
      ),
      home: const SplashScreen(),
    );
  }
}

