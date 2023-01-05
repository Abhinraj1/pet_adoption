import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:nymble/main.dart' as app;


void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Integration Testing", (tester) async{

    app.main();
    await tester.pumpAndSettle();
    final Finder button = find.byKey(const Key("History"));
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.idle();
    await tester.pumpAndSettle();

    //await Future.delayed(Duration(seconds: 1),)
  });
}
