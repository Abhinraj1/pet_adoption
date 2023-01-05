import 'package:flutter/material.dart';
import 'package:nymble/Helper/Constants/Constants.dart';
import 'package:nymble/Screens/CommonWidgets/CustomScaffold.dart';
import '../../Helper/ImageDirectory/ImageDirectory.dart';
import 'Widgets/CustomListTile.dart';



class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
        imgName: historyPageBG,
        child: ListView.builder(
          itemCount: adoptedDogs.value.length,
          itemBuilder: (BuildContext context ,index){
          if(adoptedDogs.value[index].name != null){

            ///Custom Listtile to show adopted dog names
            return CustomListTile(
                name: adoptedDogs.value[index].name.toString(),
                image: adoptedDogs.value[index].image.toString());
          }else{
            return const SizedBox();
          }
          },
        ));
  }
}
