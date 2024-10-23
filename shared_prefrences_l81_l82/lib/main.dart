// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var nameController = TextEditingController();
//   static const String KEYNAME = "name";
//   var nameValue = "No value saved"; //for UI update

//   @override
//   void initState() {
//     super.initState();
//     getValue();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('SHARED PREFRENCES'),
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: 200,
//                 child: TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                       label: Text('Name'),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20))),
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () async {
//                     // var name =
//                     //     nameController.text.toString(); // value take in string
//                     var prefs = await SharedPreferences.getInstance();
//                     prefs.setString(
//                         KEYNAME, nameController.text.toString()); // t
//                   },
//                   child: Text('Save')),
//               Text(nameValue)
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /* shared References Initialized */
//   void getValue() async {
//     var prefs = await SharedPreferences.getInstance();
//     var getName = prefs.getString(KEYNAME);

//     nameValue = getName ?? "No value saved ";
//     setState(() {});
//   }
// }

// same code with comment

// import 'package:flutter/material.dart'; // Importing Flutter Material package for UI components
// import 'package:shared_preferences/shared_preferences.dart'; // Importing SharedPreferences for persistent storage

// void main() {
//   runApp(const MyApp()); // Running the MyApp widget
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key}); // Constructor for MyApp, using the superclass's key

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo', // Setting the title of the app
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Defining the color scheme with a seed color
//         useMaterial3: true, // Enabling Material 3 design
//       ),
//       home: MyHomePage(), // Setting the home widget of the app to MyHomePage
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key, // Constructor for MyHomePage with a key
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState(); // Creating the state for MyHomePage
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var nameController = TextEditingController(); // Controller to manage the text input
//   static const String KEYNAME = "name"; // Key for storing/retrieving name in SharedPreferences
//   var nameValue = "No value saved"; // Default value for displaying the saved name

//   @override
//   void initState() {
//     super.initState(); // Calling the superclass's initState
//     getValue(); // Fetching the saved name when the widget initializes
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('SHARED PREFERENCES'), // Title of the app bar
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center, // Centering the column content
//             children: [
//               SizedBox(
//                 width: 200, // Setting width of the text field
//                 child: TextField(
//                   controller: nameController, // Linking the text field to the controller
//                   decoration: InputDecoration(
//                       label: Text('Name'), // Label for the text field
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20)) // Styling the border
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () async {
//                     // Button pressed to save name
//                     // var name = nameController.text.toString(); // Optional: Store text in a variable
//                     var prefs = await SharedPreferences.getInstance(); // Getting SharedPreferences instance
//                     prefs.setString(
//                         KEYNAME, nameController.text.toString()); // Saving the entered name
//                   },
//                   child: Text('Save')), // Button label
//               Text(nameValue) // Displaying the saved name or default message
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /* Fetching the saved name from SharedPreferences */
//   void getValue() async {
//     var prefs = await SharedPreferences.getInstance(); // Getting SharedPreferences instance
//     var getName = prefs.getString(KEYNAME); // Retrieving the saved name using the key

//     nameValue = getName ?? "No value saved"; // Updating nameValue with the retrieved name or default message
//     setState(() {}); // Updating the UI to reflect changes
//   }
// }

/**&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& L=82 login screen from shared prefrence &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrences_l81_l82/widgets_loginScreen/home_page.dart';
import 'package:shared_prefrences_l81_l82/widgets_loginScreen/login_page.dart';

void main() {
  runApp(const MyApp());
}

// The main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(), // Start with the SplashPage
    );
  }
}

// Splash screen widget
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  static const String KEYLOGIN = "login"; // Key for SharedPreferences

  @override
  void initState() {
    super.initState();
    whereToGo(); // Navigate to the appropriate page after the splash
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey, // Background color of the splash screen
        child: Center(
          child: Icon(
            Icons.account_circle, // Icon displayed on the splash screen
            color: Colors.white,
            size: 200,
          ),
        ),
      ),
    );
  }

  // Determine which page to navigate to based on login status
  void whereToGo() async {
    var SharedPref = await SharedPreferences
        .getInstance(); // Get instance of SharedPreferences
    var isLoggedIn = SharedPref.getBool(KEYLOGIN); // Check login status

    // Set a timer for 2 seconds before navigating
    Timer(
      Duration(seconds: 2),
      () {
        // Navigate based on login status
        if (isLoggedIn != null) {
          if (isLoggedIn) {
            // User is logged in, go to HomePage
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          } else {
            // User is not logged in, go to LoginPage
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          }
        } else {
          // If login status is null, default to HomePage
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
        }
      },
    );
  }
}
