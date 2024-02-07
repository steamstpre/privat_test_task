import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_task_privat/consts/consts.dart';
import 'package:test_task_privat/data/models/search_result.dart';

class MovieSection extends StatelessWidget {
  const MovieSection({required this.movie, super.key});
  final Result movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (movie.posterPath != null) ...{
          Image.network(
            dotenv.env[AppConsts.imageBaseUrl]! + movie.posterPath!,
          ),
        },
        Text(movie.title ?? ''),
        const SizedBox(height: 5),
        Text(movie.overview ?? ''),
      ],
    );
  }
}
