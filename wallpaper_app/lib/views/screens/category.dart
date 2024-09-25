import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/widgets/CustomAppBar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
            Stack(// stack use for add text on category container
                children: [
              Container(
                // make container of category box on category screen
                // for cotegory section
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Image.network(
                    fit: BoxFit.cover,
                    'https://images.pexels.com/photos/167684/pexels-photo-167684.jpeg'),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.black26,
              ),
              Positioned(
                // use for positione set of Text
                left: 120,
                top: 45,
                child: Text(
                  // add text on the category screen
                  'Mountains',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ]),

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
                        'https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
