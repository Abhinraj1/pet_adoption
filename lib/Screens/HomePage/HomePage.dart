import 'package:flutter/material.dart';
import '../../Helper/ImageDirectory/ImageDirectory.dart';
import '../CommonWidgets/CustomScaffold.dart';
import 'Widgets/CustomButton.dart';
import 'Widgets/DogPages.dart';
import 'Widgets/Search.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// CustomScaffold to show background image
    return  CustomScaffold(
      imgName: dog,
      child: SingleChildScrollView(
          child: Column(
            children: const [

              /// Search textField with autocomplete and Filter
              Search(),

              ///Card which Shows list of dogs
              DogPages(),

              ///Custom Material Button to navigate to History page
              CustomButton()
            ],
          ),
        ),

    );
  }
}
