// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class apiOperations {
//   // method
//   static getTrandingWallpaper() async {
//     // method
//     await http.get(Uri.parse('https://api.pexels.com/v1/curate'),
//     headers: {
//       "Authorization":
//           "HIr4Wc0WLukv03kzhaNFK3v7rb0tHiZgNnc37h2y1e2sXLvreOg567vy",
//     }).then((value) {
//       print(value.body);
//       // Map<String, dynamic> jsonData = jsonDecode(value.body);
//       // List photos = jsonData['photos'];
//       // photos.forEach((element) {
//       //   Map<String, dynamic> src = element["src"];
//       //   print(src["portrait"]);
//       // });
//     });
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/modal/photosModel.dart';

class apiOperations {
  static List<PhotosModel> trendingWallpapers =
      []; // Initialize here trendingWallpapers
  static List<PhotosModel> searchWallpapersList =
      []; //initialize here searchWallpapersList
  // Method to fetch trending wallpapers in grid view
  static Future<List<PhotosModel>> getTrendingWallpapers() async {
    final url = Uri.parse('https://api.pexels.com/v1/curated');
    final headers = {
      "Authorization":
          "HIr4Wc0WLukv03kzhaNFK3v7rb0tHiZgNnc37h2y1e2sXLvreOg567vy", // Replace with your actual API key
    };

    try {
      // Perform the GET request
      final response = await http.get(url, headers: headers);

      // Check if the response was successful
      if (response.statusCode == 200) {
        // Parse the JSON data
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        print(jsonData);
        List photos = jsonData['photos'];

        // Iterate through the photos and print the portrait URLs
        for (var element in photos) {
          trendingWallpapers
              .add(PhotosModel.fromAPI2App(element)); // photosModel pass in API
        }
      } else {
        print('Error: ${response.statusCode} ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return trendingWallpapers; // return of trendingwallpapers
  }

  // API for search screen
  static Future<List<PhotosModel>> searchWallpapers(String query) async {
    final url = Uri.parse(
        'https://api.pexels.com/v1/search?query=$query&per_page=30page=1');
    final headers = {
      "Authorization":
          "HIr4Wc0WLukv03kzhaNFK3v7rb0tHiZgNnc37h2y1e2sXLvreOg567vy", // Replace with your actual API key
    };

    try {
      // Perform the GET request
      final response = await http.get(url, headers: headers);

      // Check if the response was successful
      if (response.statusCode == 200) {
        // Parse the JSON data
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        print(jsonData);
        List photos = jsonData['photos'];
        searchWallpapersList.clear(); // search karne se pahle clear ho jaye sab

        // Iterate through the photos and print the portrait URLs
        for (var element in photos) {
          searchWallpapersList
              .add(PhotosModel.fromAPI2App(element)); // photosModel pass in API
        }
      } else {
        print('Error: ${response.statusCode} ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error: $e');
    }
    return searchWallpapersList; // return searcWallpapersList
  }
}

/**CHAT GPT API CALL */

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class apiOperations {
//   // Method to fetch trending wallpapers
//   static Future<void> getTrandingWallpaper() async {
//     final url = Uri.parse('https://api.pexels.com/v1/curated');
//     final headers = {
//       "Authorization":
//           "HIr4Wc0WLukv03kzhaNFK3v7rb0tHiZgNnc37h2y1e2sXLvreOg567vy", // Replace with your actual API key
//     };

//     try {
//       // Perform the GET request
//       final response = await http.get(url, headers: headers);

//       // Check if the response was successful
//       if (response.statusCode == 200) {
//         // Parse the JSON data
//         Map<String, dynamic> jsonData = jsonDecode(response.body);
//         print(jsonData);
//         List photos = jsonData['photos'];

//         // Iterate through the photos and print the portrait URLs
//         for (var element in photos) {
//           Map<String, dynamic> src = element["src"];
//           print(src["portrait"]); // Print the portrait URL
//         }
//       } else {
//         print('Error: ${response.statusCode} ${response.reasonPhrase}');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
// }
