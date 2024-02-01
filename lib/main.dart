import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_task_privat/firebase_options.dart';
import 'package:test_task_privat/services/di/di.dart';
import 'package:test_task_privat/services/navigation_service/navigation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  DependencyInjection().setupDi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: NavigationService.router,
      );
}
