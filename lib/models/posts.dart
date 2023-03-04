// To parse this JSON data, do
//
//     final dailyPost = dailyPostFromJson(jsonString);

import 'dart:convert';

List<DailyPost> dailyPostFromJson(String str) =>
    List<DailyPost>.from(json.decode(str).map((x) => DailyPost.fromJson(x)));

String dailyPostToJson(List<DailyPost> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DailyPost {
  DailyPost({
    required this.userId,
    required this.id,
    required this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String? body;

  factory DailyPost.fromJson(Map<String, dynamic> json) => DailyPost(
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
