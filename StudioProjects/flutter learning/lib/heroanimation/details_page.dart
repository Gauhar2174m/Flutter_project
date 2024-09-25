import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  // Corrected class name
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.grey,
      ),
      body: Hero(
        tag: 'background', // Tag must be consistent
        child: Image.asset(
          'assets/images/image5.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
