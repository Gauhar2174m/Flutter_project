import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller // required rahega
      });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue, // Shadow color
              blurRadius: 5, // Softness of the shadow
              offset: Offset(0, 4), // Position of the shadow
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 30),
          decoration: const InputDecoration(
            border: InputBorder.none, // remove the border line
            filled: true, // enable this property for colouring in input field
            fillColor: Colors.black, // color in input field
            contentPadding: EdgeInsets.symmetric(
                vertical: 25), // encrease the hieght and widthb of input field
          ),
          readOnly: true, // we can not give any input by a keyboard
          showCursor: true, // for showing cursuir
          autofocus: true,
        ),
      ),
    );
  }
}
