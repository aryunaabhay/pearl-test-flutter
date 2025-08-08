import 'package:flutter/material.dart';

class Movie {
  const Movie({
    required this.isFavorite,
    required this.title,
    required this.createdAt,
    required this.status,
  });

  final bool isFavorite;
  final String title;
  final DateTime createdAt;
  final MovieStatus status;
}

enum MovieStatus {
  newMovie,
  oldMovie,
  hotMovie;

  String get name => switch (this) {
        newMovie => 'New',
        oldMovie => 'Old',
        hotMovie => 'Hot',
      };
}

extension MovieStatusExtension on MovieStatus {
  Color get color => switch (this) {
        MovieStatus.newMovie => Colors.blue,
        MovieStatus.oldMovie => Colors.grey,
        MovieStatus.hotMovie => Colors.red,
      };
}
