import 'package:flutter/material.dart';
import 'package:quiz_app/data/local/HomePage.dart';
import 'package:quiz_app/data/local/db_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the DBHelper instance
    DBHelper db = DBHelper.getInstance(); // Ensure this is a proper singleton
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          const MyHomePage(), // Use const if MyHomePage is stateless or has a const constructor
    );
  }
}
