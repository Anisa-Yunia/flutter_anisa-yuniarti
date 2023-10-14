import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_task/soal_prioritas2.dart';
// Gantilah dengan path yang sesuai

void main() {
  testWidgets('soal Prioritas 2 test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the initial date input is empty.
    expect(find.text('Enter Date'), findsOneWidget);

    // Tap the date input field.
    await tester.tap(find.byType(TextField));

    // Wait for the date picker to appear.
    await tester.pumpAndSettle();

    // Verify that the date picker is displayed.
    expect(find.byType(CalendarDatePicker), findsOneWidget);

    // Tap on a date in the picker.
    await tester.tap(find.text('1'));

    // Wait for the picker to close and the date to be selected.
    await tester.pumpAndSettle();

    // Verify that the selected date is displayed in the input field.
    //expect(find.text('2023-10-01'), findsOneWidget);

    // Verify that the color button and color picker work.
    expect(find.text('Color'), findsOneWidget);
    await tester.tap(find.byType(ElevatedButton).at(0)); // Tap "Pick Color"
    await tester.pumpAndSettle();
    await tester.tap(find.byType(ElevatedButton).at(0)); // Tap "Save"
    await tester.pumpAndSettle();

    // Verify that the "Pick Files" button works.
    expect(find.text('Pick Files'), findsOneWidget);
    await tester
        .tap(find.byType(ElevatedButton).at(1)); // Tap "Pick and Open File"
    await tester.pumpAndSettle();

    // You can add more test cases as needed.

    // Ensure that the app doesn't crash and widgets behave as expected.
  });
}
