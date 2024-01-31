import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/screens/list_screen/bloc/list_screen_bloc.dart';

class ListScreenView extends StatelessWidget {
  const ListScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple.shade300],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.white54),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.length > 2) {
                BlocProvider.of<ListScreenBloc>(context)
                    .add(Search(nameOfFilm: value));
              }
            },
          )),
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<ListScreenBloc, ListScreenState>(
              builder: (context, state) => state.maybeWhen(
                resultOfSearch: (List<Result> res) => ListView.builder(
                    itemCount: res.length,
                    itemBuilder: (context, count) {
                      return ListTile(
                        title: Text(res[count].title ?? ''),
                      );
                    }),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                orElse: () => const Center(
                  child: Text('pls enter data...'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
