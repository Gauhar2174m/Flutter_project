import 'package:flutter/material.dart';
import 'package:wallpaper_app/controller/apioper.dart';
import 'package:wallpaper_app/modal/photosModel.dart';
import 'package:wallpaper_app/views/widgets/CustomAppBar.dart';
import 'package:wallpaper_app/views/widgets/searchbar.dart';
import 'package:wallpaper_app/views/widgets/Catlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<PhotosModel> trendingWallList; // loacally variable define

  GetTrendingWallpapers() async {
    //method
    trendingWallList = await apiOperations.getTrendingWallpapers();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    // apiOperations.getTrandingWallpaper();
    // ApiOperations.getTrendingWallpapers();
    GetTrendingWallpapers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomAppBar(
            word1: 'Wallpape',
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
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Catlist(),
                itemCount: 30,
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              // height: MediaQuery.of(context).size.height,
              height: 700,
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
                        fit: BoxFit.cover, trendingWallList[index].imgSrc),
                  ),
                ),
                itemCount: trendingWallList
                    .length, // item trendingwallist item ki length ke equal ho
              ),
            )
          ],
        ),
      ),
    );
  }
}
