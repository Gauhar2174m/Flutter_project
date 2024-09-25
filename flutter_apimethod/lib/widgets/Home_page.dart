import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_apimethod/widgets/model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<sampleposts> samplePosts = []; // Renamed variable

  @override
  void initState() {
    super.initState();
    getData(); // Call getData in initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: samplePosts.length, // Use samplePosts.length
        itemBuilder: (context, index) {
          return Container(
            height: 500,
            color: Colors.greenAccent,
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(
                //   'User Id: ${samplePosts[index].userId}', // Display userId
                //   style: TextStyle(fontSize: 20),
                // ),
                // Text('Id: ${samplePosts[index].id}',
                //     style: TextStyle(fontSize: 20)), // Display id
                // Text('Title: ${samplePosts[index].title}',
                //     style: TextStyle(fontSize: 20)), // Display title
                // Text('Data: ${samplePosts[index].body}',
                //     style: TextStyle(fontSize: 20)), // Display body
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      for (Map<String, dynamic> index in data) {
        samplePosts
            .add(sampleposts.fromJson(index)); // Correctly add to samplePosts
      }
      setState(() {}); // Update the UI after fetching data
    } else {
      // Handle error
      throw Exception('Failed to load posts');
    }
  }
}
