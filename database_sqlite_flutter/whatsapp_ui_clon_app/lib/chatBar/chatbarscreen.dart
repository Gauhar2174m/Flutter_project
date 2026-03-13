import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class ChatBarScreen extends StatelessWidget {
  var arrchatcontent = [
    {
      "Image":
          "https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=",
      "name": "Atul",
      "time": "15min ago",
    },
    {
      "Image":
          "https://thumbs.dreamstime.com/b/rainbow-clouds-white-generative-ai-stunning-view-interspersed-creating-vibrant-captivating-sky-image-was-323433904.jpg",
      "name": "Atul",
      "time": "15min ago",
    },
    {
      "Image": "https://th.bing.com/th/id/OIG2.9O4YqGf98tiYzjKDvg7L",
      "name": "Atul",
      "time": "15min ago",
    },
    {
      "Image":
          "https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?cs=srgb&dl=pexels-soldiervip-1308881.jpg&fm=jpg",
      "name": "Atul",
      "time": "15min ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
            text: "Select Contact", height: 24, color: Colors.white),
        backgroundColor: Color(0XFF00A884),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                size: 30,
              ),
              Icon(Icons.more_vert)
            ],
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage(arrchatcontent[index]["Image"].toString()),
                ),
                title: UiHelper.CustomText(
                    text: arrchatcontent[index]["name"].toString(), height: 16),
                subtitle: UiHelper.CustomText(
                    text: arrchatcontent[index]["time"].toString(), height: 14),
              ),
              itemCount: arrchatcontent.length,
            ),
          )
        ],
      ),
    );
  }
}
