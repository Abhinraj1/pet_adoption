import '../Helper/Constants/Constants.dart';
import '../Helper/DogsList/DogsList.dart';
import 'FromStorageToAdoptedDogsList.dart';
import 'FromStorageToUnAdoptedDogsList.dart';



/// Check Whether local data is empty or not
class Init{
function() {

  if (box.read("unAdopted") == null) {

    box.write("unAdopted", dogsList);
    unAdoptedDogs.value == dogsList;
  }else{

    /// IF not empty retrieve data from local storage
    fromStorageToUnAdoptedList();
    fromStorageToAdoptedList();

  }

}}
