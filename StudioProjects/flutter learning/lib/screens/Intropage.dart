import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro Page'),
      ),
      body: Center(
        child: Text('Welcome to the Intro Page!'),
      ),
    );
  }
}
