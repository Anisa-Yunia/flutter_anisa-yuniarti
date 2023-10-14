// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_task/main.dart';

void main() {
  testWidgets('UI Testing for Contact App', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify the initial state of the app
    expect(find.text('My Contacts'), findsOneWidget);

    // Tap the "Submit" button without entering data
    await tester.tap(find.text('Sumbit'));
    await tester.pumpAndSettle();

    // Verify that validation error message is shown
    //expect(find.text('Please enter some text'), findsOneWidget);

    // Enter data into the name and phone fields
    await tester.enterText(find.byType(TextFormField), 'John Doe');
    // await tester.enterText(find.byType(TextField), '+123-456-7890');

    // Verify that the error message is gone
    expect(find.text('Please enter some text'), findsNothing);

    // Tap the "Submit" button to add a contact
    await tester.tap(find.text('Sumbit'));
    await tester.pumpAndSettle();

    // Verify that the contact has been added
    expect(find.text('John Doe'), findsOneWidget);
    //expect(find.text('+123-456-7890'), findsOneWidget);

    // Tap the "Edit" button for the added contact
    await tester.tap(find.byIcon(Icons.edit).first);
    await tester.pumpAndSettle();

    // Verify that the edit dialog is displayed
    expect(find.text('Form Edit'), findsOneWidget);

    // You can add more test cases for the edit dialog if needed.

    // Tap the "Cancel" button in the edit dialog
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();

    // Verify that the edit dialog is closed

    // Tap the "Delete" button for the added contact
    await tester.tap(find.byIcon(Icons.delete).first);
    await tester.pumpAndSettle();

    // Verify that the contact has been deleted

    // You can add more test cases as needed for other UI elements.

    // Ensure that the app doesn't crash and widgets behave as expected.
  });
}
