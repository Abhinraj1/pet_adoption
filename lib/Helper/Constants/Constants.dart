import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nymble/Model/DogModel.dart';


final box = GetStorage();
 var selectedBreed = DogModel().obs;
 var adoptedFilter = false.obs;
 var darkMode = false.obs;
 var ageFilter = 10.0.obs;
 var lowerAgeFilter = 1.0.obs;
 var higherAgeFilter = 9.0.obs;
 var adoptedDogs = [DogModel()].obs;
 var unAdoptedDogs = [DogModel()].obs;


