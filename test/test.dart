import 'package:flutter_test/flutter_test.dart';
import 'package:test_task_privat/consts/consts.dart';
import 'package:test_task_privat/main.dart';

void main() {
  testWidgets('test 1', (tester) async {
    await tester.pumpWidget(const MainApp());

    expect(find.text(AppConsts.textForInputData), findsOneWidget);
    expect(find.text('test'), findsNothing);
  });
}
