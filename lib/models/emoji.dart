// To parse this JSON data, do
//
//     final myEmoji = myEmojiFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class MyEmoji {
  MyEmoji({
    required this.name,
    required this.category,
    required this.group,
    required this.htmlCode,
    required this.unicode,
  });

  String name;
  String category;
  String group;
  List<String> htmlCode;
  List<String> unicode;

  factory MyEmoji.fromJson(String str) => MyEmoji.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MyEmoji.fromMap(Map<String, dynamic> json) => MyEmoji(
    name: json["name"],
    category: json["category"],
    group: json["group"],
    htmlCode: List<String>.from(json["htmlCode"].map((x) => x)),
    unicode: List<String>.from(json["unicode"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "category": category,
    "group": group,
    "htmlCode": List<dynamic>.from(htmlCode.map((x) => x)),
    "unicode": List<dynamic>.from(unicode.map((x) => x)),
  };
}
