import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nymble/Screens/CommonWidgets/CustomScaffold.dart';
import 'package:nymble/Screens/HomePage/HomePage.dart';
import '../../Helper/Constants/Constants.dart';
import '../../Helper/ImageDirectory/ImageDirectory.dart';
import '../../Utilities/FromStorageToAdoptedDogsList.dart';
import 'Widgets/AdoptButton.dart';
import 'Widgets/DetailsCard.dart';


class DetailsPage extends StatefulWidget {
   DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {


    return
      WillPopScope(
        onWillPop: () async{
          Get.offAll(const HomePage());
          return true;
        },
          child: Scaffold(
           body: Hero(
               tag: "details",
               child: CustomScaffold(
                 imgName: dogp2,
                 child:
                 SingleChildScrollView(
                   child: Column(
                     children: const [

                       /// Custom card to show dog details
                       DetailsCard(),

                       /// Custom button
                       AdoptButton()

                     ],
                   ),
                 ),
               )),
          ),
        );

  }


}
