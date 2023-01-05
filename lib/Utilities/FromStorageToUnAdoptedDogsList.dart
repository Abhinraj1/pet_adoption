import '../Helper/Constants/Constants.dart';
import '../Model/DogModel.dart';


/// IF not empty retrieve data from local storage
/// and save it to unAdoptedDogs List

fromStorageToUnAdoptedList(){
  unAdoptedDogs.value = List<DogModel>.from(box.read("unAdopted")
      .map((i) => DogModel.fromJson(i)));
}