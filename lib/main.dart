import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'Helper/Themes/ThemeModes.dart';
import 'Screens/HomePage/HomePage.dart';
import 'Utilities/FromStorageToAdoptedDogsList.dart';
import 'Utilities/InitFunctions.dart';



void main() async{

  /// To store data locally
  await GetStorage.init();

  /// App entry point
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  void initState() {
    super.initState();

    /// Check Whether local data is empty or not
    Init().function();

    /// Retrieve adopted dogs if any
    fromStorageToAdoptedList();
  }



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption',
      theme: light,
      darkTheme: dark,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
