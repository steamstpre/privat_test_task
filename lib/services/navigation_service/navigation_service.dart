import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_privat/consts/consts.dart';
import 'package:test_task_privat/data/models/search_result.dart';
import 'package:test_task_privat/screens/info_screen/info_screen.dart';
import 'package:test_task_privat/screens/list_screen/list_view/list_screen.dart';

class MyExtraCodec extends Codec<Object?, Object?> {
  const MyExtraCodec();
  @override
  Converter<Object?, Object?> get decoder => const _MyExtraDecoder();

  @override
  Converter<Object?, Object?> get encoder => const _MyExtraEncoder();
}

class _MyExtraDecoder extends Converter<Object?, Object?> {
  const _MyExtraDecoder();
  @override
  Object? convert(Object? input) {
    try {
      if (input == null) {
        return null;
      }

      final searchResult = SearchResult.fromJson(input as Map<String, dynamic>);
      return searchResult;
    } catch (_) {
      return null;
    }
  }
}

class _MyExtraEncoder extends Converter<Object?, Object?> {
  const _MyExtraEncoder();
  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    if (input is Result) {
      return input.toJson();
    }

    throw FormatException('Cannot encode type ${input.runtimeType}');
  }
}

class NavigationService {
  static GoRouter get router {
    final navigatorKey = GlobalKey<NavigatorState>();

    return GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      initialLocation: ListScreen.path,
      extraCodec: const MyExtraCodec(),
      routes: <RouteBase>[
        GoRoute(
            path: ListScreen.path,
            builder: (context, state) => const ListScreen(),
            routes: [
              GoRoute(
                  path: AppConsts.pathForGoRouter,
                  builder: (context, state) =>
                      InfoScreen(movie: state.extra! as Result)),
              GoRoute(
                  path: 'checkinfopage',
                  builder: (context, state) =>
                      InfoScreen(movie: AppConsts.deepLinkMovie))
            ]),
      ],
    );
  }
}
