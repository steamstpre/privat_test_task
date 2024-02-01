import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_privat/consts/consts.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/screens/info_screen/info_screen.dart';
import 'package:test_task_privat/screens/list_screen/bloc/list_screen_bloc.dart';
import 'package:test_task_privat/screens/list_screen/widgets/movie_section.dart';
import 'package:test_task_privat/services/di/di.dart';

class ListScreenView extends StatefulWidget {
  const ListScreenView({super.key});

  @override
  State<ListScreenView> createState() => _ListScreenViewState();
}

class _ListScreenViewState extends State<ListScreenView> {
  final _scrollController = ScrollController();
  final _textController = TextEditingController();
  int indexOfPage = 1;
  final getIt = GetIt.instance;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(loadNextPage);
  }

  void loadNextPage() {
    _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent
        ? BlocProvider.of<ListScreenBloc>(context)
            .add(Search(nameOfFilm: _textController.text))
        : null;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
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
              controller: _textController,
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
                } else {
                  BlocProvider.of<ListScreenBloc>(context)
                      .add(const CleanSearch());
                }
              },
            )),
        body: SafeArea(
          child: Column(
            children: [
              BlocBuilder<ListScreenBloc, ListScreenState>(
                builder: (context, state) => state.maybeWhen(
                  resultOfSearch: (List<Result> res) => SizedBox(
                    height: MediaQuery.of(context).size.height / 1.22,
                    child: ListView.builder(
                        itemCount: res.length,
                        controller: _scrollController,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (index < res.length - 1) {
                            return GestureDetector(
                              onTap: () => context.go(InfoScreen.path,
                                  extra: res[index]),
                              child: ListTile(
                                title: Column(
                                  children: [
                                    MovieSection(movie: res[index]),
                                    const Divider()
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                  ),
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
