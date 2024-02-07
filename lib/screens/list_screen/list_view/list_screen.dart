import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_task_privat/screens/list_screen/bloc/list_screen_bloc.dart';
import 'package:test_task_privat/screens/list_screen/list_view/list_screen_view.dart';
import 'package:test_task_privat/services/di/di.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  static const path = '/list_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListScreenBloc(
        Provider.of<DependencyInjection>(context, listen: false).api,
        Provider.of<DependencyInjection>(context, listen: false).repository,
      ),
      child: const ListScreenView(),
    );
  }
}
