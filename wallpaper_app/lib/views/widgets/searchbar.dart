import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/screens/search.dart';

class Searchbar extends StatelessWidget {
  Searchbar({super.key});
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 5, vertical: 5), // different from you tube
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color
              spreadRadius: 2, // How much the shadow should spread
              blurRadius: 1, // How blurry the shadow should be
              offset:
                  Offset(0, 2), // Horizontal and vertical offset of the shadow
            ),
          ],
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        // text field and icon wrap in row
        children: [
          Expanded(
            // textfield make the expanded for width
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search Wallpapers',
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
          InkWell(
              // for clickable
              onTap: () {
                Navigator.push(
                    //on tap we navigate the searchscreen show data
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SearchScreen(query: _searchController.text)));
              },
              child: Icon(Icons.search)) // search war
        ],
      ),
    );
  }
}
