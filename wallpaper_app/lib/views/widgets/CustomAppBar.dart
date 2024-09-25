import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String word1;
  String word2;
  String word3;

  CustomAppBar({
    super.key,
    required this.word1,
    required this.word2,
    required this.word3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: word1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            TextSpan(
              text: word2, // Multiple spaces for a gap
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.transparent, // Make spaces invisible
              ),
            ),
            TextSpan(
              text: word3,
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
