import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class calculateButton extends StatelessWidget {
  const calculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue("=");
      },
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.brown, borderRadius: BorderRadius.circular(26)),
        child: const Center(
          child: Text(
            '=',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w600, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
