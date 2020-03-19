import 'package:flutter/foundation.dart';

class Movie {
  final int id;
  final String name;

  Movie({@required this.id, @required this.name});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(id: json['id'], name: json['original_title']);
  }
}
