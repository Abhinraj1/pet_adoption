import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nymble/Screens/DetailsPage/DetailsPage.dart';
import 'package:nymble/Screens/DetailsPage/Widgets/AdoptButton.dart';
import 'package:nymble/Screens/HomePage/HomePage.dart';
import 'package:nymble/Screens/HomePage/Widgets/Search.dart';
import 'package:nymble/main.dart';


void main() {


  testWidgets('Widget Testing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
   await tester.pumpWidget( const MyApp());

   await tester.idle();

    var search = find.byKey(const Key("Search"));

    expect(search, findsWidgets);


  });
}
