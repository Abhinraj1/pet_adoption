import '../Helper/Constants/Constants.dart';

/// removing unadopted
removeSelectedDogFromUnAdoptedList(){

  unAdoptedDogs =  unAdoptedDogs..removeWhere(
          (element){
        return
          element.name.toString() ==
              selectedBreed.value.name.toString();
      });
}