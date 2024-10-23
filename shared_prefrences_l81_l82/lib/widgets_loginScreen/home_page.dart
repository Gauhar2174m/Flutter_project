import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome to Home Page')),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/image5.jpg'),
          )
        ],
      ),
    );
  }
}
