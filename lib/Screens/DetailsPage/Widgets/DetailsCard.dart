import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Helper/Constants/Constants.dart';
import '../../../Helper/TextManager/TextStyleManager.dart';
import 'ImageViewer.dart';




/// Custom card to show dog details
class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Align(
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: (){

          ///Image viewer with zoom in function
          Get.to(ImageViewer());
        },
        child:
        Container(
          height: 200,
          width: 300,
          margin: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:  Colors.white.withOpacity(0.9),
              image:  DecorationImage(
                  image: AssetImage(selectedBreed.value.image.toString()),
                  fit: BoxFit.cover,
                  opacity: 0.5
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          text: "NAME: ",
                          style: Style().title,
                          children: [
                            TextSpan(
                              text: selectedBreed.value.name,
                              style: Style().subTitle,
                            )
                          ]
                      ) ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "AGE: ",
                          style: Style().title,
                          children: [
                            TextSpan(
                              text: selectedBreed.value.age.toString(),
                              style: Style().subTitle,
                            )
                          ]
                      ) ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "PRICE: ",
                          style: Style().title,
                          children: [
                            TextSpan(
                              text: selectedBreed.value.price,
                              style: Style().subTitle,
                            )
                          ]
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
