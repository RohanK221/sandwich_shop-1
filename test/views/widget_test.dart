import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sandwich_shop/main.dart';

void main() {
  testWidgets('Switch toggles between six-inch and footlong', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.byKey(const Key('sandwich_type_switch')), findsOneWidget);
    expect(find.text('six-inch'), findsOneWidget);

    await tester.tap(find.byKey(const Key('sandwich_type_switch')));
    await tester.pump();

    expect(find.text('footlong'), findsOneWidget);
  });
}