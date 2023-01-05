import 'package:nymble/Helper/Constants/Constants.dart';

import '../Helper/DogsList/DogsList.dart';



class GetListOf{

List<String> dogs() {
  return unAdoptedDogs.value.map((name) => name.name.toString()).toList();
}}