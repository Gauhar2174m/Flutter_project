import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class StatusScreen extends StatelessWidget {
  var arrstatuscontent = [
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
  // StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(text: "Status", height: 24),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Stack(children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                    "https://imgs.search.brave.com/hdlViPxGcDwDxNNfwpGL8QiJwwtPQ6fz1PyLVfPYmoY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnNz/dGF0aWMubmV0L2xB/QmlULmpwZw"),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Color(0XFF00A884),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
                ),
              )
            ]),
          ),
          title: UiHelper.CustomText(text: "My Status", height: 20),
          subtitle:
              UiHelper.CustomText(text: "Tap to add status update", height: 15),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiHelper.CustomText(text: "Recent updates", height: 16),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.grey,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage(arrstatuscontent[index]["Image"].toString()),
              ),
              title: UiHelper.CustomText(
                  text: arrstatuscontent[index]["name"].toString(), height: 16),
              subtitle: UiHelper.CustomText(
                  text: arrstatuscontent[index]["time"].toString(), height: 14),
            ),
            itemCount: arrstatuscontent.length,
          ),
        )
      ],
    ));
  }
}
