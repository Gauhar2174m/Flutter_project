import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/chatBar/chatbarscreen.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "image":
          "https://imgs.search.brave.com/nG1XXrjBGwj_rWKgiJkqEsDlf4PbjUpJ0kzu9eRx4Ag/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvRnJl/ZVBob3Rvcy9GcmVl/LVBob3RvLTc0MHg0/OTItMTc0NDkxNTMz/My5qcGc",
      "name": "Aron",
      "lastmsg": "Hello",
      "time": "4:34am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/anFFcdNJcVA0vyFPz_M1gS0r5C3UqoSZ_S2tDWM5p3Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
      "name": "varun",
      "lastmsg": "Hello",
      "time": "4:31 am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/ObBD4OH_MegvWQOK32QTjSbxDLgjHJTULkiMys1vV6M/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvN2phRkdR/dWFOaXJDQmdpbXVF/d0JWVC9jNDAzYWZj/ZDczZGI0MjI5ZGMx/YTc3MWEzMGUxZjI3/OC9Xb25kZXJzLW9m/LU5hdHVyZS1UaHVt/Yi5qcGc",
      "name": "kapil",
      "lastmsg": "Hello",
      "time": "4:32 am",
      "msgcount": "2"
    },
    {
      "image":
          "https://imgs.search.brave.com/nG1XXrjBGwj_rWKgiJkqEsDlf4PbjUpJ0kzu9eRx4Ag/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvRnJl/ZVBob3Rvcy9GcmVl/LVBob3RvLTc0MHg0/OTItMTc0NDkxNTMz/My5qcGc",
      "name": "Aron",
      "lastmsg": "Hello",
      "time": "4:34am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/anFFcdNJcVA0vyFPz_M1gS0r5C3UqoSZ_S2tDWM5p3Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
      "name": "varun",
      "lastmsg": "Hello",
      "time": "4:31 am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/ObBD4OH_MegvWQOK32QTjSbxDLgjHJTULkiMys1vV6M/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvN2phRkdR/dWFOaXJDQmdpbXVF/d0JWVC9jNDAzYWZj/ZDczZGI0MjI5ZGMx/YTc3MWEzMGUxZjI3/OC9Xb25kZXJzLW9m/LU5hdHVyZS1UaHVt/Yi5qcGc",
      "name": "kapil",
      "lastmsg": "Hello",
      "time": "4:32 am",
      "msgcount": "2"
    },
    {
      "image":
          "https://imgs.search.brave.com/nG1XXrjBGwj_rWKgiJkqEsDlf4PbjUpJ0kzu9eRx4Ag/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvRnJl/ZVBob3Rvcy9GcmVl/LVBob3RvLTc0MHg0/OTItMTc0NDkxNTMz/My5qcGc",
      "name": "Aron",
      "lastmsg": "Hello",
      "time": "4:34am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/anFFcdNJcVA0vyFPz_M1gS0r5C3UqoSZ_S2tDWM5p3Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
      "name": "varun",
      "lastmsg": "Hello",
      "time": "4:31 am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/ObBD4OH_MegvWQOK32QTjSbxDLgjHJTULkiMys1vV6M/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvN2phRkdR/dWFOaXJDQmdpbXVF/d0JWVC9jNDAzYWZj/ZDczZGI0MjI5ZGMx/YTc3MWEzMGUxZjI3/OC9Xb25kZXJzLW9m/LU5hdHVyZS1UaHVt/Yi5qcGc",
      "name": "kapil",
      "lastmsg": "Hello",
      "time": "4:32 am",
      "msgcount": "2"
    },
    {
      "image":
          "https://imgs.search.brave.com/nG1XXrjBGwj_rWKgiJkqEsDlf4PbjUpJ0kzu9eRx4Ag/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvRnJl/ZVBob3Rvcy9GcmVl/LVBob3RvLTc0MHg0/OTItMTc0NDkxNTMz/My5qcGc",
      "name": "Aron",
      "lastmsg": "Hello",
      "time": "4:34am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/anFFcdNJcVA0vyFPz_M1gS0r5C3UqoSZ_S2tDWM5p3Y/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
      "name": "varun",
      "lastmsg": "Hello",
      "time": "4:31 am",
      "msgcount": "7"
    },
    {
      "image":
          "https://imgs.search.brave.com/ObBD4OH_MegvWQOK32QTjSbxDLgjHJTULkiMys1vV6M/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvN2phRkdR/dWFOaXJDQmdpbXVF/d0JWVC9jNDAzYWZj/ZDczZGI0MjI5ZGMx/YTc3MWEzMGUxZjI3/OC9Xb25kZXJzLW9m/LU5hdHVyZS1UaHVt/Yi5qcGc",
      "name": "kapil",
      "lastmsg": "Hello",
      "time": "4:32 am",
      "msgcount": "2"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage(arrContent[index]["image"].toString()),
              ),
              title: UiHelper.CustomText(
                  text: arrContent[index]["name"].toString(),
                  height: 16,
                  fontweight: FontWeight.bold),
              subtitle: UiHelper.CustomText(
                  text: arrContent[index]["lastmsg"].toString(), height: 14),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomText(
                      text: arrContent[index]["time"].toString(), height: 16),
                  CircleAvatar(
                    backgroundColor: Color(0XFF00A884),
                    radius: 12,
                    child: UiHelper.CustomText(
                        text: arrContent[index]["msgcount"].toString(),
                        height: 14,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            itemCount: arrContent.length,
          ),
        ),
      ]),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatBarScreen(),
              ));
        },
        child: CircleAvatar(
          radius: 32,
          backgroundColor: Color(0XFF00A884),
          child: Image.asset('assets/images/mode_comment_black_24dp 1.png'),
        ),
      ),
    );
  }
}
