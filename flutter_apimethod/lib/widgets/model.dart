import 'dart:convert';

List<sampleposts> samplepostsFromJson(String str) => List<sampleposts>.from(
    json.decode(str).map((x) => sampleposts.fromJson(x)));

String samplepostsToJson(List<sampleposts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class sampleposts {
  int userId;
  int id;
  String title;
  String body;

  sampleposts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory sampleposts.fromJson(Map<String, dynamic> json) => sampleposts(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
