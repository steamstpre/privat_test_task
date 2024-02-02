import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test_task_privat/consts/consts.dart';
import 'package:test_task_privat/data/api/api.dart';
import 'package:test_task_privat/data/repository/repository.dart';
import 'package:test_task_privat/main.dart';

class MockDio extends Mock implements Dio {}

void main()  {
  testWidgets('test 1', (tester) async {
    await tester.pumpWidget(const MainApp());

    expect(find.text(AppConsts.textForInputData), findsOneWidget);
    expect(find.text('test'), findsNothing);
  });
}
