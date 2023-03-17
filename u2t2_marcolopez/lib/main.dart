import 'package:flutter/material.dart';
import 'tarea2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 2',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Tarea2(),
    );
  }
}
