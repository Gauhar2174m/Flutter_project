import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/widgets/calculateButton.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/textfield.dart';
// import 'package:calculator/widgets/button1.dart';
import 'package:calculator/screen/buttons_data.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const Padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const Decoration = BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)));

    return Consumer<CalculatorProvider>(builder: (context, Provider, _) {
      // we can access the Calculator provider through Provider argument
      return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Calculator App'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            CustomTextField(
              controller: Provider.compController,
            ), // pass the controller property here use prover with texteditigcontroller(compController)
            const Spacer(), // take space between two components
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              padding: Padding,
              // margin: const EdgeInsets.all(8.0),
              decoration: Decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 8]),
                  ),
                  Row(
                    // for last 2 lines we make a row in which macke column
                    children: [
                      Expanded(
                        child: Column(
                          // coulmn hold the two rows that is keep three button
                          children: [
                            Row(
                              // row 5 with three button
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonList[index + 12]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonList[index + 15]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      calculateButton()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
