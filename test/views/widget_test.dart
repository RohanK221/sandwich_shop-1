import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sandwich_shop/main.dart';

void main() {
  testWidgets('Switch toggles between six-inch and footlong', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.byType(Switch), findsOneWidget);
    expect(find.text('six-inch'), findsOneWidget);

    await tester.tap(find.byType(Switch));
    await tester.pump();

    expect(find.text('footlong'), findsOneWidget);
  });
}