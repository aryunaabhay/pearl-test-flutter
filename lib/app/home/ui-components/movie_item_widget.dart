import 'package:app/app/home/entities/movie.dart';
import 'package:flutter/material.dart';

class MovieItemWidget extends StatelessWidget {
  const MovieItemWidget({
    super.key,
    required this.movie,
    required this.onFavoriteToggle,
  });

  final Movie movie;
  final Function(bool) onFavoriteToggle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(movie.title),
              Spacer(),
              Switch(value: movie.isFavorite, onChanged: onFavoriteToggle)
            ],
          ),
          Row(
            children: [
              Text('Created at: ${movie.createdAt}'),
              Spacer(),
              Chip(
                label: Text(movie.status.name),
                backgroundColor: movie.status.color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
