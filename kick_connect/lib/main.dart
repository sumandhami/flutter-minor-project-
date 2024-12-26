import 'package:flutter/material.dart';
import 'package:kick_connect/pages/startingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kick Connect",
      home: StartingPage(),
    );
  }
}
