import 'package:flutter/material.dart';
import 'package:test_task_privat/consts/api_config.dart';
import 'package:test_task_privat/data/models/search_result.dart';

class MovieSection extends StatelessWidget {
  const MovieSection({required this.movie, super.key});
  final Result movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (movie.posterPath != null) ...{
          Image.network(ApiConfig.imageBaseUrl + movie.posterPath!),
        },
        Text(movie.title ?? ''),
        const SizedBox(height: 5),
        Text(movie.overview ?? ''),
      ],
    );
  }
}
