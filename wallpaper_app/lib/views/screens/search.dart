import 'package:flutter/material.dart';
import 'package:wallpaper_app/controller/apioper.dart';
import 'package:wallpaper_app/modal/photosModel.dart';
import 'package:wallpaper_app/views/widgets/CustomAppBar.dart';
import 'package:wallpaper_app/views/widgets/searchbar.dart';
// import 'package:wallpaper_app/views/widgets/Catlist.dart';

class SearchScreen extends StatefulWidget {
  String query; // query always required for search
  SearchScreen({super.key, required this.query});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late List<PhotosModel> searchResults;

  GetSearchResults() async {
    searchResults = await apiOperations.searchWallpapers(widget
        .query); // query get karne ke liye widget likha kioki query also member this screen
    setState(() {});
  }

  @override
  void initState() {
    // that is use  only one time for fetching data

    super.initState();
    GetSearchResults();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomAppBar(
            word1: 'Wallpaper',
            word2: ' ',
            word3: 'App',
          ),
          centerTitle: true, // bar center
          elevation: 10.0,
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(7), // we can also give the padding
                child: Searchbar()),

            // SizedBox(
            //   height: 15,
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                physics: BouncingScrollPhysics(), // physics
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisExtent:
                        400, // for increase the container height using mainAxisExtent
                    mainAxisSpacing: 12),
                itemBuilder: (context, index) => Container(
                  // color: Colors.grey,// container color no need

                  // height: 800,
                  // width: 200,

                  child: ClipRRect(
                    // clipRRect use for give raduis for Image
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        fit: BoxFit.cover,
                        searchResults[index]
                            .imgSrc), //Show image from search result imgsrc sourch
                  ),
                ),
                itemCount: searchResults
                    .length, // photos screen par searchResult.legth ki equal show
              ),
            )
          ],
        ),
      ),
    );
  }
}
