import 'package:flutter/material.dart';
import 'package:test_task_privat/services/navigation_service/navigation_service.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: NavigationService.router,
      );
}
