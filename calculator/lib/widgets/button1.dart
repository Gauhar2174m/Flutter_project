import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.label,
  });
  final String label; // globaly label define
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label);
      },
      child: Material(
        elevation: 5,
        color: Colors.black26,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          backgroundColor: Colors.black26,
          radius: 36,
          child: Text(
            label,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
