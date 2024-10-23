import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var Inchcontroller = TextEditingController();

  var result = "";
  var msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(' BMI APP'),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.orange.shade100,
            Colors.amber.shade100,
            Colors.blue.shade100,
            Colors.grey.shade100,
            Colors.brown.shade100
            // Color(0xffff9a9e), Color(0xffa18cd1)// color take from website
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('BMI',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey)),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: wtcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.line_weight),
                    hintText: "Enter weight (in KG)",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                      borderSide: BorderSide(
                          color: Colors.transparent), // Hide the default border
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: ftcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.height),
                    hintText: "Enter your weight (in Feet)",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                      borderSide: BorderSide(
                          color: Colors.transparent), // Hide the default border
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: Inchcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.height),
                    hintText: "Enter your Height (in Inch)",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                      borderSide: BorderSide(
                          color: Colors.transparent), // Hide the default border
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.amber,
                    minimumSize: Size(200, 50), // Change to your desired color
                  ),
                  onPressed: () {
                    /**Convert editable formate to string */
                    var wt = wtcontroller.text
                        .toString(); // take the value of weight textfield  controller
                    var ft = ftcontroller.text
                        .toString(); // take the value of ft textfield  controller
                    var Inch = Inchcontroller.text
                        .toString(); // take the value (convert editable formate to string)

                    if (wt != "" && ft != "" && Inch != "") {
                      //BMI calculation
                      /** Change String to integer  */

                      var intweight = int.parse(wt);
                      var intfeet = int.parse(ft);
                      var intInch = int.parse(Inch);

                      /*logic of calculate total meter  */
                      var totalinch = (intfeet * 12) + intInch;
                      var totalcm = totalinch * 2.54;
                      var totalmeter = totalcm / 100;
                      /**BMI LOGIC  */
                      var bmi = intweight / (totalmeter * totalmeter);
                      /** If we want show message with result */
                      // Create msg variable and by defoult null
                      if (bmi > 25) {
                        msg = " Overweight";
                      } else if (bmi < 18) {
                        msg = "Underweight";
                      } else {
                        msg = "Healty";
                      }
                      setState(() {
                        result = "Your BMI is ${bmi.toStringAsFixed(2)}\n$msg";
                      });
                    } else {
                      setState(() {
                        result =
                            "Please fill the all required blanks"; // if condition is not true than run else
                      });
                    }
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 150,
                      width: 500,
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        result,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ))),
                )
              ],
            ),
          ),
        ));
  }
}
