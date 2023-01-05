import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nymble/Helper/Constants/Constants.dart';
import 'package:nymble/Helper/DogsList/DogsList.dart';
import 'package:nymble/Utilities/GetListOfDogs.dart';
import 'package:nymble/Utilities/InitFunctions.dart';
import 'package:nymble/main.dart';



class MockInit extends Mock implements GetListOf{}


void main() {


  test("unit Test", () async{

    final  initTester = MockInit();
    when(() => initTester.dogs()).thenReturn(<String>[]);
    expect(initTester.dogs(), <String>[]);

  });

}