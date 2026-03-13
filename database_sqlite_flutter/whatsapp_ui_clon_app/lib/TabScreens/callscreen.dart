import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class CallScreen extends StatelessWidget {
  var arrcallscontent = [
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
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiHelper.CustomText(text: "Recent ", height: 16),
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
                    NetworkImage(arrcallscontent[index]["Image"].toString()),
              ),
              title: UiHelper.CustomText(
                  text: arrcallscontent[index]["name"].toString(), height: 16),
              subtitle: UiHelper.CustomText(
                  text: arrcallscontent[index]["time"].toString(), height: 14),
              trailing: Icon(Icons.call),
            ),
            itemCount: arrcallscontent.length,
          ),
        )
      ],
    ));
  }
}
