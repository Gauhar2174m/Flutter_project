/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  flutter container and Center &&&&&&&&&&&&&&&&&&*/
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('flutter container'),
//         ),
//         body: Center(
//           child: Container(
//             width: 100,
//             height: 100,
//             color: Colors.blue,
//             child:Center(child: Text('hello Gauhar'),)
//              // Change this color as per your requirement
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=30 Center Widget  &&&&&&&&&&&&&&&&&&*/

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello flutter '),
//         ),
//         body: Center(
//           child: Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   'hello Gauhar',
//                   style: TextStyle(fontSize: 20),
//                 ), // text in center
//               )
//               // Change this color as per your requirement
//               ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=31 Text Widget and its Styles  &&&&&&&&&&&&&&&&&&*/

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello flutter '),
//         ),
//         body: Center(
//           child: Container(
//             child: Text('hello gauhar mansoori',
//                 style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.blue,
//                     backgroundColor: Colors.yellow,
//                     fontWeight: FontWeight.bold)),
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=32 ALL TYPES OF BUTTON IN FLUTTER  &&&&&&&&&&&&&&&&&&*/
// flate (Text Button)
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello flutter '),
//         ),
//         body: Center(
//           child: Container(
//             child: TextButton(
//               child: Text('press me '),
//               onPressed: () {
//                 print('button pressed');
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// //ElevetedButton
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello flutter '),
//         ),
//         body: Center(
//           child: Container(
// child: ElevatedButton(
//   child: Text('press me '),
//   onPressed: () {
//     print('button pressed');
//   },
// ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Out line Button

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello flutter '),
//         ),
//         body: Center(
//           child: Container(
//             child: OutlinedButton(
//               child: Text('press me '),
//               onPressed: () {
//                 print('button pressed');
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=33  Image Widget  &&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello flutter '),
//         ),
//         body: Center(
//           child: Container(
//             child: Image.network(
//                 'https://images.pexels.com/photos/1563355/pexels-photo-1563355.jpeg?cs=srgb&dl=pexels-thatguycraig000-1563355.jpg&fm=jpg'), //
//           ),
//         ),
//       ),
//     );
//   }
// }

/*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=34 ROW AND COULMNS IN FLUTTER  &&&&&&&&&&&&&&&&&&*/
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Flutter Page'),
//         ),
//         body: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'hello',
//               style: TextStyle(fontSize: 30),
//             ),
//             Text(
//               'hello',
//               style: TextStyle(fontSize: 30),
//             ),
//             Text(
//               'hello',
//               style: TextStyle(fontSize: 30),
//             ),
//             Text(
//               'hello',
//               style: TextStyle(fontSize: 30),
//             ),
//             ElevatedButton(
//               child: Text('press me '),
//               onPressed: () {
//                 print('button pressed');
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue, // Set your desired color here
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=35 INK WELL Widget &&&&&&&&&&&&&&&&&&*/
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Flutter Page'),
//         ),
//         body: Center(
//           child: InkWell(
//             onLongPress: (){
//               print('hello');
//             },
//             onDoubleTap: ()=>{
//               print('hello flutter')
//             },
//             child: Container(
//          width: 100,
//          height: 100,
//          color: Colors.amber,
//         ),
//           ),
//         )
//       ),
//     );
//   }
// }

/*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=36 SCROLL VIEW WIDGET &&&&&&&&&&&&&&&&&&*/

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Hello Flutter Page'),
//           ),
//           body:SingleChildScrollView( // scroll view
//             child:  Padding( // pading
//             padding: EdgeInsets.all(8),
//             child: Column(// wrap the widget in the column
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(bottom: 12), // margin widget
//                   width: 200,
//                   height: 200,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   width: 200,
//                   height: 200,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   width: 200,
//                   height: 200,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   width: 200,
//                   height: 200,
//                   color: Colors.amber,
//                 ),
//               ],
//             ),
//           ),
//           )),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=47 LIST VIEW &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// // ListView
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Hello Flutter Page'),
//           ),
//           body:  Padding( // pading
//             padding: EdgeInsets.all(8),
//             child: ListView(// wrap the widget in the column
//             // scrollDirection: Axis.horizontal,
//             // scrollDirection:Axis.vertical,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   child: Text('one',style: TextStyle(fontSize: 26,fontWeight:FontWeight.w500),),
//                 ),
//                  Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   child: Text('Two',style: TextStyle(fontSize: 26,fontWeight:FontWeight.w500),),
//                 ),
//                  Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   child: Text('Three',style: TextStyle(fontSize: 26,fontWeight:FontWeight.w500),),
//                 ),
//                  Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   child: Text('Four',style: TextStyle(fontSize: 26,fontWeight:FontWeight.w500),),
//                 ),
//                  Container(
//                   margin: EdgeInsets.only(bottom: 12),
//                   child: Text('five',style: TextStyle(fontSize: 26,fontWeight:FontWeight.w500),),
//                 ),

//               ],
//             ),
//           ),
//           ),
//     );
//   }
// }

// listView.Builder

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var arrname=['Banana','Apple','Orange','watermillon','papaya'];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Flutter Page'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(8),
//           child: ListView.builder(

//             itemBuilder: (context, index) {
//               return Text(
//                arrname[index],

//                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
//               );
//             },
//             itemCount: arrname.length,
//           ),
//         ),
//       ),
//     );
//   }
// }

// SEPERATED LIST

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var arrname = ['Banana', 'Apple', 'Orange', 'watermillon', 'papaya'];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Flutter Page'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(8), // seperated list
//           child: ListView.separated(
//             itemBuilder: (context, index) {
//               return Text(
//                 arrname[index],
//                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500,),
//               );
//             },
//             itemCount: arrname.length,
//             separatorBuilder: (context, index) { // that is necessary for dividing the array
//               return Divider(height: 100,thickness: 2,);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=40 Container decoration &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Hello Flutter Page'),
//           ),
//           body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             color: Colors.blueGrey,
//             child: Center(
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 decoration: BoxDecoration(
//                     // decoration in the container
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border.all(
//                       width: 2,
//                       color: Colors.black,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 21,
//                         spreadRadius: 11,
//                         color: Colors.blue,
//                       )
//                     ]),
//               ),
//             ),
//           )),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& l=41 expanded widget &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Expanded Widget Example')),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 1,
//               // This container expand all space
//               child: Container(
//                 color: Colors.red,
//                 child: Center(
//                   child: Text('Expanded Container 1'),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.blue,
//                 height: 100,
//                 child: Center(
//                   child: Text('Fixed Height Container 2'),
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.yellow,
//               height: 100,
//               child: Center(
//                 child: Text('Fixed Height Container 2'),
//               ),
//             ),
//             Container(
//               color: Colors.grey,
//               height: 100,
//               child: Center(
//                 child: Text('Fixed Height Container 2'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=42 MARGINE AND PADDING &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Expanded Widget Example')),
//         body: Column(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.only(top: 50),// padding in widget
//               color: Colors.yellow,
//               height: 100,
//               width: 100,
//               child: Center(
//                 child: Text('hello'),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 12, top: 12), //margine in
//               color: Colors.grey,
//               height: 100,
//               width: 100,
//               child: Center(
//                 child: Text('hello'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=43 listile and include in list view builder &&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var arrname = ['Banana', 'Apple', 'Orange', 'watermillon', 'papaya'];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Flutter Page'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(8), // seperated list
//           child: ListView.separated(
//             itemBuilder: (context, index) {
//               return ListTile(
//                 // leading: Text('$index'), // show index of array // we can remove the leading if i want only tittle ,subtitle, tittrailling
//                 title: Text(arrname[index]), // proint array data
//                 subtitle: Text('color'), // color text print
//                 trailing: Icon(Icons.add), // add icon
//               );
//             },
//             itemCount: arrname.length, //
//             separatorBuilder: (context, index) {
//               // that is necessary for dividing the array
//               return Divider(
//                 height: 100,
//                 thickness: 2,
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

/// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=44 CircularAvator &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello Flutter Page'),
//       ),
//       body: Center(
//           child: CircleAvatar(
//         backgroundColor: Colors.green,
//         maxRadius: 60,
//         child: Container(
//           height: 60,
//           width: 60,
//           child: Column(
//             children: [
//               Container(
//                   height: 30,
//                   width: 30,
//                   child: Image.asset('assets/images/image5.jpg')),
//               Text('name')
//             ],
//           ),
//         ), // for increasing circle
//       )),
//     ));
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& l=46 Style and theme &&&&&&&&&&&&&&&&&&&&&&&&&*/

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: TextTheme(
//           headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           headline2: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Flutter Page'),
//           // backgroundColor: Colors.orange,
//         ),
//         body: Column(
//           children: [
//             Text(
//               'hello world',
//               style: Theme.of(context).textTheme.headline1, // Use headline1 style
//             ),
//             Text(
//               'hello world',
//               style: Theme.of(context).textTheme.headline2, // Use headline2 style
//             ),
//             Text(
//               'hello world',
//               style: Theme.of(context).textTheme.headline1, // Use headline1 style
//             ),
//             Text(
//               'hello world',
//               style: Theme.of(context).textTheme.headline2, // Use headline2 style
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=47 CARD WIDGET &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
library;

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello Flutter Page'),
//       ),
//       body: Center(
//           child: Card(// card
//               elevation: 20,
//               shadowColor: Colors.green,
//               child: Padding(
//                 padding: const EdgeInsets.all(100),
//                 child: Text(
//                   'hello world',
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontSize: 25,
//                   ),
//                 ),
//               ))),
//     ));
//   }
// }

/*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=48 TEXT FIELD & LOGIN FORM &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var emailText = TextEditingController(); // text editing controller
//     var passText = TextEditingController(); // text editing controller
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.blueGrey,
//               title: const Text('Hello Flutter Page'),
//             ),
//             body: Center(
//               child: SizedBox(
//                   width: 300,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Text widget outside of the TextField
//                       const Text(
//                         'Please enter your name below:',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       TextField(
//                         controller: emailText, // take input
//                         decoration: InputDecoration(
//                             labelText: "Enter you email id ", // leveltext
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(11)),
//                             // suffixText: "please enter the email",
//                             suffixIcon: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(Icons.remove_red_eye)),
//                             prefixIcon: const Icon(Icons.email)),
//                       ),
//                       Container(
//                         height: 11,
//                       ),
//                       // Text widget outside of the TextField
//                       const Text(
//                         'Please enter your name below:',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       TextField(
//                         controller: passText, // take input
//                         obscureText: true, // for hidden password
//                         obscuringCharacter:
//                             '*', // password hidden karne ke liye konsa character use karna hai
// decoration: InputDecoration(
//     labelText: "Enter your password", // text label
//     focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(11),
//         borderSide: const BorderSide(
//           color: Colors.deepOrange,
//           width: 2,
//         ))),
//                       ),
//                       ElevatedButton(
//                           onPressed: () {
//                             String uemail = emailText.text.toString();
//                             String upass = passText.text;
//                             print(
//                                 "email:$uemail,pass:$upass"); // for printing email and password inconsole
//                           },
//                           child: const Text('login'))
//                     ],
//                   )),
//             )));
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=49 = current date and time &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*/
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var time = DateTime.now(); // Make 'time' a final variable

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello World App'), // Fixed title text
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: Text(
//                 'Current time: ${time.day}.', // Using 'time' here will only display the time when the widget was first built
//                 style: const TextStyle(fontSize: 24),
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   // setState(() {});  // this function do not working
//                 },
//                 child: const Text('current Time '))
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=50 DateFormaten &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // import the package from intl package from chrome

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var time = DateTime.now(); // Make 'time' a final variable

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello World App'), // Fixed title text
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: Text(
//                 'Current time: ${DateFormat().format(time)}.', // Using 'time' here will only display the time when the widget was first built
//                 style: const TextStyle(fontSize: 24),
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   // setState(() {});  // this function do not working
//                 },
//                 child: const Text('current Time '))
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=52 GRID LAYOUT &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var arrColors = [
//       // make array of the color
//       Colors.blue,
//       Colors.orange,
//       Colors.grey,
//       Colors.yellow,
//       Colors.brown,
//       Colors.black,
//       Colors.green,
//       Colors.white,
//       Colors.purple,
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Grid'), // Fixed title text
//         ),
//         body: Column(
//           children: [
//             // Make sure to use expanded or sized box for the GridView
//             Expanded(
//               child: GridView.count(
//                 // grid container
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 11, // space in column
//                 mainAxisSpacing: 11, // space in row
//                 children: [
//                   Container(color: arrColors[0]),
//                   Container(color: arrColors[1]),
//                   Container(color: arrColors[2]),
//                   Container(color: arrColors[3]),
//                   Container(color: arrColors[4]),
//                   Container(color: arrColors[5]),
//                   Container(color: arrColors[6]),
//                   Container(color: arrColors[7]),
//                   Container(color: arrColors[8]),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//             Container(
//               width: double.infinity,
//               height: 200, // Provide height for the GridView.extent
//               child: GridView.extent(
//                 maxCrossAxisExtent: 50,
//                 crossAxisSpacing: 11,
//                 mainAxisSpacing: 11,
//                 children: [
//                   Container(color: arrColors[0]),
//                   Container(color: arrColors[1]),
//                   Container(color: arrColors[2]),
//                   Container(color: arrColors[3]),
//                   Container(color: arrColors[4]),
//                   Container(color: arrColors[5]),
//                   Container(color: arrColors[6]),
//                   Container(color: arrColors[7]),
//                   Container(color: arrColors[8]),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// WHILE WE DON'T KNOW ABOUT HOW MUCH DATA COMES IN WE WILL USE THE GRID BUILDER

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var arrColors = [
//       Colors.blue,
//       Colors.orange,
//       Colors.grey,
//       Colors.yellow,
//       Colors.brown,
//       Colors.black,
//       Colors.green,
//       Colors.white,
//       Colors.purple,
//       Colors.red,
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Grid'), // Fixed title text
//         ),
//         body: GridView.builder(
//           itemCount: arrColors.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//             crossAxisSpacing: 8.0, // Optional: space between columns
//             mainAxisSpacing: 8.0, // Optional: space between rows
//           ),
//           itemBuilder: (context, index) {
//             return Container(
//               color: arrColors[index],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=53 CALLBACK FUNCTION &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//   callback() {
//       // call back function
//       print('hello');
//     }

//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Hello Grid'), // Fixed title text
//           ),
//           body: ElevatedButton(onPressed: callback, child: Text('click me'))),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=54 CUSTOM WIDGET APP SPLIT INTO WIDGET &&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('CUSTOM WIDGET'), // Fixed title text
//         ),
//         body: Column(
//           children: [
//             container1(),
//             container2(),
//             container3(),
//             container4(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class container4 extends StatelessWidget {// custom widget of container 4
//   const container4({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.grey,
//         child: ListView.builder(
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(11.0),
//             child: Container(
//               width: 100,
//               color: Colors.green,
//             ),
//           ),
//           itemCount: 10,
//           scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }

// class container3 extends StatelessWidget { // custom widget of container 3
//   const container3({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.grey,
//         child: ListView.builder(
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(11.0),
//             child: Container(
//               width: 200,
//               color: Colors.green,
//             ),
//           ),
//           itemCount: 10,
//           scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }

// class container2 extends StatelessWidget {// custom widget of container 2
//   const container2({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 4,
//       child: Container(
//         color: Colors.orange,
//         child: ListView.builder(
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundColor: Colors.greenAccent,
//               ),
//               title: Text('name'),
//               subtitle: Text('mobille number'),
//               trailing: Icon(Icons.delete),
//             ),
//           ),
//           itemCount: 10,
//           scrollDirection: Axis.vertical,
//         ),
//       ),
//     );
//   }
// }

// class container1 extends StatelessWidget { // custom widget of container 1
//   const container1({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.blue,
//         child: ListView.builder(
//           itemCount: 10,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(11),
//             child: SizedBox(
//               width: 100,
//               child: CircleAvatar(
//                 backgroundColor: Colors.grey,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=55 STACK WIDGET &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello Grid'), // Fixed title text
//         ),
//         body: Stack(
//           children: [
//             Container(
//               width: 300,
//               height: 300,
//               color: Colors.green,
//               child: Text('container1'),
//             ),
//             Positioned( // use for posion set
//               left: 21,
//               top: 21,
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.blueGrey,
//                 child: Text('container2'),
//               ),
//             ),
//             Container(
//               width: 150,
//               height: 150,
//               color: Colors.orange,
//               child: Text('container3'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=56 custom widget &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';
// import 'widgets/container1.dart';
// import 'widgets/container2.dart';
// import 'widgets/container3.dart';
// import 'widgets/container4.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('CUSTOM WIDGET'), // Fixed title text
//         ),
//         body: Column(
//           children: [
//             container1(),
//             container2(),
//             container3(),
//             container4(),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=58 SIZEBOX &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.grey),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(' SIZED BOX'),
//           backgroundColor: Colors.grey, // Fixed title text
//         ),
//         body: Center(
//           child: SizedBox( // expand ,shirink ,square
//             height: 50,
//             width: 200,
//             child: ElevatedButton(
//               onPressed: () {},
//               child:
//                   const Text('click me'), // Added const keyword for Text widget
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors
//                     .blue, // Use ElevatedButton.styleFrom to set background color
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=57 WRAP WIDGET &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.grey),
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('WRAP WIDGET'),
//             backgroundColor: Colors.grey, // Fixed title text
//           ),
//           body: Wrap(
//             direction:
//                 Axis.vertical, // here we also use the horizontal Axis for row ,
//             spacing: 11,
//             runSpacing: 11,

//             children: [
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//               ),
//             ],
//           )),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=59  RICH TEXT &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.grey),
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('RICH TEXT'),
//             backgroundColor: Colors.grey, // Fixed title text
//           ),
//           body: RichText(
//               text: TextSpan(
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 21), // by defoult take this style
//                   children: <TextSpan>[
//                 TextSpan(text: 'hello'),
//                 TextSpan(
//                     text: 'World',
//                     style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold))
//               ]))),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=63 StatefulWidgets and StatelessWidgets &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// example of state less widgets
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('StatelessWidget Example')),
//         body: Center(child: GreetingWidget(name: 'hello')),
//       ),
//     );
//   }
// }

// class GreetingWidget extends StatelessWidget {
//   final String name;

//   GreetingWidget({required this.name});

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Hello, $name!',
//       style: TextStyle(fontSize: 24),
//     );
//   }
// }

// statefulwidgets

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('StatefulWidget Example')),
//         body: Center(
//           child: Counter(),
//         ),
//       ),
//     );
//   }
// }

// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0; // variable name

//   void _incrementCounter() {
//
//     setState(() {
//       // Fixed setState syntax that is used for reflect the update data on the UI
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment:
//           MainAxisAlignment.center, // Added to center the column contents
//       children: [
//         Container(
//           child: Text('Counter value: $_counter'), // Fixed variable name
//         ),
//         SizedBox(height: 20), // Added height to SizedBox for spacing
//         ElevatedButton(
//           onPressed: _incrementCounter, // Fixed method name
//           child: Text('Increment'),
//         ),
//       ],
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=64 UPDATE CORRECTLY WITH STATEFULWIDGETS &&&&&&&&&&&&&&&&&&&&&&&& */
//simple calculator
// import 'package:flutter/material.dart';

// // Main entry point of the application
// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('StatefulWidget Example')),
//         body: Center(
//           child: Counter(), // Display the Counter widget
//         ),
//       ),
//     );
//   }
// }

// // Counter widget to perform arithmetic operations
// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   var no1controller =
//       TextEditingController(); // Controller for first number input
//   var no2controller =
//       TextEditingController(); // Controller for second number input
//   var result = ""; // Variable to store the result message

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               keyboardType: TextInputType.number, // Numeric input
//               controller: no1controller, // Controller for the first text field
//             ),
//             TextField(
//               keyboardType: TextInputType.number, // Numeric input
//               controller: no2controller, // Controller for the second text field
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         var no1 = int.parse(no1controller.text
//                             .toString()); // Parse first number
//                         var no2 = int.parse(no2controller.text
//                             .toString()); // Parse second number
//                         var sum = no1 + no2; // Calculate sum
//                         result =
//                             "the sum of $no1 and $no2 is $sum"; // Update result message
//                         setState(() {}); // Update UI with new result
//                       },
//                       child: Text('add')), // Button for addition
//                   ElevatedButton(
//                       onPressed: () {
//                         var no1 = int.parse(no1controller.text
//                             .toString()); // Parse first number
//                         var no2 = int.parse(no2controller.text
//                             .toString()); // Parse second number
//                         var diff = no1 - no2; // Calculate subtraction

//                         result =
//                             "Diffrence between of $no1 and $no2 is $diff"; // Update result message
//                         setState(() {}); // Update UI with new result
//                       },
//                       child: Text('sub')), // Button for subtraction
//                   ElevatedButton(
//                       onPressed: () {
//                         var no1 = int.parse(no1controller.text
//                             .toString()); // Parse first number
//                         var no2 = int.parse(no2controller.text
//                             .toString()); // Parse second number
//                         var mul = no1 * no2; // Calculate multiplication

//                         result =
//                             "the sub of $no1 and $no2 is $mul"; // Update result message
//                         setState(() {}); // Update UI with new result
//                       },
//                       child: Text('mul')), // Button for multiplication
//                   ElevatedButton(
//                       onPressed: () {
//                         var no1 = int.parse(no1controller.text
//                             .toString()); // Parse first number
//                         var no2 = int.parse(no2controller.text
//                             .toString()); // Parse second number
//                         var div = no1 / no2; // Calculate division

//                         result =
//                             "the div of $no1 and $no2 is $div"; // Update result message
//                         setState(() {}); // Update UI with new result
//                       },
//                       child: Text('div')), // Button for division
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 result, // Display the result
//                 style: TextStyle(
//                     fontSize: 32, // Font size for result
//                     fontWeight: FontWeight.w600, // Font weight for result
//                     color: Colors.blue), // Color for result text
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=66 SWITCH ONE SCREEN TO ANOTHER SCREEN &&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';
// import 'package:untitled/screens/Intropage.dart'; // Make sure this path is correct

// // Main entry point of the application
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(), // Set the home screen //yeh decide karta hai pahle konsi screen aayegi
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello World App'), // Title of the AppBar
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center, // Centering the content
//           children: [
//             Container(
//               child: Text(
//                 'Hello, World!', // The text displayed
//                 style: TextStyle(fontSize: 24), // Text style
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 //Navigate to the Intropage when the button is pressed
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Intropage()),
//                 );
//               },
//               child: Text('Next'), // Button text
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=67 SPLASH SCREEN &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  */
// sabse pahle SplashScreen call hogi kioki bo main file me home par likhi hui hai
//jo sirf 5 sec ke liye call hogi phir automatic timer class ki help se nevigate ho jayegi intropage par

// import 'package:flutter/material.dart';
// import 'package:untitled/screens/splash_screen.dart';

// // Main entry point of the application
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: SplashScreen()
//         );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=69 FLUTTER RANGE SLIDER &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   RangeValues values = const RangeValues(0, 10);

//   @override
//   Widget build(BuildContext context) {
//     RangeLabels labels =
//         RangeLabels(values.start.toString(), values.end.toString());
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Range_slider'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               RangeSlider(
//                 values: values,
//                 labels: labels,
//                 divisions: 9, // Use for dividing slider into parts
//                 min: 0, // Set min value
//                 max: 10, // Set max value
//                 onChanged: (newValue) {
//                   setState(() {
//                     values = newValue;
//                     // Print the new values
//                     print('${newValue.start}, ${newValue.end}');
//                   });
//                 },
//               ),
//               Text(
//                 'Selected Range: ${values.start} - ${values.end}',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=71 ANIMATE CONTAINER &&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var _width = 200.0;
//   var _height = 100.0;
//   bool flag = true; // Using bool instead of var for clarity

//   Decoration myDecor = BoxDecoration(
//       borderRadius: BorderRadius.circular(2), color: Colors.orange);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedContainer(
//                 height: _height,
//                 width: _width,
//                 decoration: myDecor,
//                 duration: Duration(
//                     seconds: 1), // Changed to 1 second for quicker feedback
//                 curve: Curves.bounceInOut, // Optional: smooth animation
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     if (flag) {
//                       _width =
//                           500.0; // Change these values to see the animation
//                       _height = 200.0;
//                       myDecor = BoxDecoration(
//                           borderRadius: BorderRadius.circular(21),
//                           color: Colors.blueGrey);
//                       flag = false; // Update flag to prevent immediate reset
//                     } else {
//                       _height = 100.0; // Reset to original height
//                       _width = 200.0; // Reset to original width
//                       flag = true;
//                       myDecor = BoxDecoration(
//                           borderRadius: BorderRadius.circular(21),
//                           color: Colors.blue);
//                       // Reset flag to allow expansion again
//                     }
//                   });
//                 },
//                 child: Text('Animate container'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=72 ANIMATE Opacity Widgets  &&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double myOpacity = 1.0; // Opacity defined globally
//   bool visible = true; // Using for toggling

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedOpacity(
//                 opacity: myOpacity,
//                 duration: Duration(seconds: 2),
//                 child: Container(
//                   height: 100,
//                   width: 200,
//                   color: Colors.blue,
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     // Toggle opacity and invisible state
//                     if (visible) {
//                       myOpacity = 1.0;
//                     } else {
//                       myOpacity = 0.0;
//                     }
//                     visible = !visible; // Update the toggle state
//                   });
//                 },
//                 child: Text('Animate container'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=73 ANIMTED CROSS FADE WIDGET &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _showFirstContainer = true; // Toggle between the two containers

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedCrossFade(
//                 firstChild: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.grey,
//                 ),
//                 secondChild: Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.blue,
//                 ),
//                 crossFadeState: _showFirstContainer  // logic of toggle
//                     ? CrossFadeState.showFirst
//                     : CrossFadeState.showSecond,
//                 duration: Duration(seconds: 2),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _showFirstContainer = !_showFirstContainer; // Toggle state
//                   });
//                 },
//                 child: Text('Toggle'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& passing data one screen to another screen through button &&&&&&&&&&&&& */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatefulWidget {
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('First Screen')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Enter text',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               child: Text('Go to Second Screen'),
//               onPressed: () {
//                 // Navigate to the SecondScreen and pass the text
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SecondScreen(data: _controller.text),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   final String data;

//   SecondScreen({required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second Screen')),
//       body: Center(
//         child: Text(
//           data, // Display the passed data
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

/** &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=74 HERO ANIMATION &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

// import 'package:flutter/material.dart';
// import 'package:untitled/heroanimation/details_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: myhomepage() // Correct class name
//         );
//   }
// }

// class myhomepage extends StatelessWidget {
//   const myhomepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hero Animation'),
//         backgroundColor: Colors.grey,
//       ),
//       body: Center(
//           child: InkWell(
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => DetailsPage()));
//         },
//         child: Hero(
//             tag:
//                 'background' // same tag doshri screen par dena hoga ye linking method h
//             ,
//             child: Image.asset(
//               'assets/images/image5.jpg',
//               height: 200,
//               width: 200,
//               fit: BoxFit.cover,
//             )),
//       )),
//     );
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&  L=75 LIST WHEELSCROLL VIEW (3D) &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('3D LIST SCROLL'),
        ),
        body: Text('hello world text'),
      ),
    );
  }
}
