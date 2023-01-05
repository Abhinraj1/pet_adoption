import '../Helper/Constants/Constants.dart';
import '../Model/DogModel.dart';


/// Retrieve adopted dogs if any
fromStorageToAdoptedList(){

if(box.read("adopted") != null){
  adoptedDogs.value = List<DogModel>.from(box.read("adopted")
      .map((i) => DogModel.fromJson(i)));
}
}