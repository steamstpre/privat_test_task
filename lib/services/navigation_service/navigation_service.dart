import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_privat/screens/info_screen/info_screen.dart';
import 'package:test_task_privat/screens/list_screen/list_view/list_screen.dart';

class NavigationService {
  static GoRouter get router {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      initialLocation: ListScreen.path,
      routes: <RouteBase>[
        GoRoute(
          path: ListScreen.path,
          builder: (context, state) => const ListScreen(),
        ),
        GoRoute(
          path: InfoScreen.path,
          builder: (context, state) => const InfoScreen(),
        )
      ],
    );
  }
}
