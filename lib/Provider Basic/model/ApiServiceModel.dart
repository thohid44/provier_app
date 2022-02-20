// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<ApiServicemodel> welcomeFromJson(String str) => List<ApiServicemodel>.from(
    json.decode(str).map((x) => ApiServicemodel.fromJson(x)));

String welcomeToJson(List<ApiServicemodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiServicemodel {
  ApiServicemodel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ApiServicemodel.fromJson(Map<String, dynamic> json) =>
      ApiServicemodel(
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
