// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Article {
  String title;
  String description;
  String imgUrl;
  String link;
  DateTime date;
  String author;
  String profilePic;

  Article(
      {required this.title,
      required this.description,
      required this.imgUrl,
      required this.link,
      required this.date,
      required this.author,
      required this.profilePic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'imgUrl': imgUrl,
      'link': link,
      'date': date,
      'author': author,
      'profilePic': profilePic,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'] as String,
      description: map['description'] as String,
      imgUrl: map['imgUrl'] as String,
      link: map['link'] as String,
      date: map['date'] as DateTime,
      author: map['author'] as String,
      profilePic: map['profilePic'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source) as Map<String, dynamic>);
}
