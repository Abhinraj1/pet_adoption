import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Helper/Constants/Constants.dart';
import '../../../Helper/TextManager/TextStyleManager.dart';
import '../../HistoryPage/HistoryPage.dart';




class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: MaterialButton(
          key: const Key("History"),
          height: 50,
          minWidth: 300,
          color: Colors.red.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ), onPressed: () {
          Get.to(const HistoryPage());
        },
          child: Text("History",
            style: Style().adoptBtn,),));
  }
}
