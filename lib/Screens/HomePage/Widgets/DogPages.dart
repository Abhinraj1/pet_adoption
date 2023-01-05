import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modest_pagination/modest_pagination.dart';
import 'package:nymble/Helper/ImageDirectory/ImageDirectory.dart';
import 'package:nymble/Helper/TextManager/TextStyleManager.dart';
import 'package:nymble/Screens/DetailsPage/DetailsPage.dart';
import '../../../Helper/Constants/Constants.dart';
import '../../../Helper/DogsList/DogsList.dart';



///Card which Shows list of dogs
class DogPages extends StatelessWidget {
  const DogPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0x4fAD6B31),
              ),
              margin: const EdgeInsets.only(top: 40),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Obx(() {
                        return ModestPagination(
                          items: adoptedFilter.value ? adoptedDogs : dogsList,
                          itemsPerPage: 6,
                          pagesPerSheet: 6,
                          gridViewCrossAxisCount: 2,
                          activeTextColor: Colors.black,
                          inactiveTextColor: Colors.black87,
                          pagesControllerIconsColor: Colors.black,
                          sheetsControllerIconsColor: Colors.black,
                          useListView: false,
                          childWidget: (dogs) {

                            if(dogs.name != null &&
                                dogs.age! >= higherAgeFilter.value &&
                                dogs.age! <= lowerAgeFilter.value){

                              ///Check if the dog is adopted or not
                              bool isAdopted = adoptedDogs.contains(dogs);

                              return Center(
                                child: InkWell(
                                  onTap: (){
                                    if(!isAdopted) {

                                      ///Selected dog Object
                                      selectedBreed.value = dogs;
                                      Get.to(DetailsPage());
                                    }
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: isAdopted ?
                                          Colors.red.withOpacity(0.4) :
                                          Colors.black45,
                                        ),
                                        child: Center(
                                          child: SizedBox(
                                            width: 100,
                                            child: Text(dogs.name.toString(),
                                              style: Style().dogName,
                                            ),
                                          ),
                                        ),
                                      ),
                                      isAdopted ?
                                      Positioned(
                                        top: 10,
                                        left: 20,
                                        child: Text("You've Adopted",
                                          style: Style().adoptedText,
                                        ),
                                      ) :
                                      const SizedBox(),
                                      isAdopted ?  const Positioned(
                                        bottom: 0,
                                        right: 2,
                                        child: AnimatedEmoji(
                                          animate: true,
                                          AnimatedEmojis.butterfly,
                                          size: 50,
                                          repeat: true,
                                        ),
                                      ) :
                                      const SizedBox(),
                                    ],
                                  ),
                                ),
                              );
                            }else{
                              return const Placeholder(
                                color: Colors.transparent,
                                strokeWidth: 0,
                              );
                            }
                          },
                        );
                      }
                  )

              ),
            ),
            Positioned(
              left: 120,
              top: 10,
              child: Hero(
                tag: "details",
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(dogp2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
