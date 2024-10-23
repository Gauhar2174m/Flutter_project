import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrences_l81_l82/main.dart';
import 'package:shared_prefrences_l81_l82/widgets_loginScreen/home_page.dart';

// LoginPage widget for user authentication
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'), // Title of the AppBar
        backgroundColor: Colors.grey, // AppBar background color
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.all(10.0), // Padding around the main content
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the column vertically
            children: [
              Icon(
                Icons.account_circle, // Icon representing user account
                color: Colors.grey,
                size: 100, // Size of the icon
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text('E-mail ID'), // Label for the email text field
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(20)) // Styling the border
                    ),
              ),
              SizedBox(
                height: 15, // Space between text fields
              ),
              TextField(
                decoration: InputDecoration(
                    label:
                        Text('Password'), // Label for the password text field
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(20)) // Styling the border
                    ),
                obscureText: true, // Hides the password input for security
              ),
              SizedBox(
                height: 15, // Space between text fields and button
              ),
              SizedBox(
                width: 200, // Width of the login button
                child: ElevatedButton(
                    onPressed: () async {
                      // When the button is pressed
                      var SharedPref = await SharedPreferences
                          .getInstance(); // Get instance of SharedPreferences
                      SharedPref.setBool(SplashPageState.KEYLOGIN,
                          true); // Set login status to true
                      // Navigate to HomePage after successful login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Login')), // Button text
              )
            ],
          ),
        ),
      ),
    );
  }
}
