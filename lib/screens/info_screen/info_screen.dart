import 'package:flutter/material.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/screens/list_screen/widgets/movie_section.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required this.movie});
  static const path = '/list_screen/info_screen';
  final Result movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title ?? ''),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          MovieSection(movie: movie),
          const SizedBox(height: 5),
          Text(movie.popularity.toString())
        ]),
      ),
    );
  }
}
