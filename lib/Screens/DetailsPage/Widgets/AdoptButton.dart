import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nymble/Model/DogModel.dart';
import '../../../Helper/Constants/Constants.dart';
import '../../../Helper/TextManager/TextStyleManager.dart';
import '../../../Utilities/AddSelectedDogObjectToAdoptedList.dart';
import '../../../Utilities/RemoveSelectedDogFromUnAdoptedList.dart';
import '../../HomePage/HomePage.dart';


class AdoptButton extends StatelessWidget {
  const AdoptButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.only(top: 400.0),
      child: MaterialButton(
        height: 50,
        minWidth: 300,
        color: Colors.red.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: (){

          /// on pressed function
          onPressed();
        },
        child: Text("ADOPT!",
          style: Style().adoptBtn,),
      ),
    );
  }

  onPressed(){

    /// adding selected dog object to adopted list
    addSelectedDogObjectToAdoptedList();

    /// remove Selected dog object from unAdopted list
    removeSelectedDogFromUnAdoptedList();

    ///Saving Data to Local Storage
    box.writeInMemory("unAdopted", unAdoptedDogs.value as List<DogModel>);
    box.writeInMemory("adopted", adoptedDogs.value as List<DogModel>);

   /// Pop up with test and confetti
    Get.defaultDialog(
      content: confetti(),
      onWillPop: ()async{
        Get.offAll(const HomePage());
        return true;
      },
      title: "You've now Adopted ${selectedBreed.value.name}",
      backgroundColor: Colors.white70,
      titleStyle: Style().confettiTitle,
      middleTextStyle: const TextStyle(color: Colors.white),
    );



  }

  Widget confetti (){
    return  const AnimatedEmoji(
      animate: true,
      AnimatedEmojis.confettiBall,
      size: 180,
      repeat: true,
    );
  }
}
