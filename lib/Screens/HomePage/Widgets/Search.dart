import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nymble/Screens/DetailsPage/DetailsPage.dart';
import 'package:nymble/Screens/HomePage/HomePage.dart';
import '../../../Helper/Constants/Constants.dart';
import '../../../Helper/DogsList/DogsList.dart';
import '../../../Helper/TextManager/TextStyleManager.dart';
import '../../../Model/DogModel.dart';
import '../../../Utilities/GetListOfDogs.dart';
import 'FilterContent.dart';



/// Search textField with autocomplete and Filter
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        Container(
          key: const Key("Search"),
            padding: const EdgeInsets.only(
                top: 50,
                left: 15,
                right: 15),
            alignment: Alignment.center,
            child: EasyAutocomplete(
                suggestions: GetListOf().dogs(),
                cursorColor: Colors.white60,
                suggestionBackgroundColor: Colors.white24,
                inputTextStyle: Style().search,
                decoration: InputDecoration(
                    filled: true,
                    suffixIcon: IconButton(
                        onPressed: (){
                          Get.defaultDialog(
                            content: content(context),
                            title: "Filter",
                            onWillPop: () async{
                              Get.offAll(const HomePage());
                              return true;
                            },
                            backgroundColor: Theme.of(context).dialogBackgroundColor,
                            titleStyle:  Theme.of(context).textTheme.headline5,
                            middleTextStyle: Theme.of(context).textTheme.headline6,
                          );
                        },
                        icon: const Icon(
                          Icons.filter_list_rounded,
                          color: Colors.black,)
                    ),
                    fillColor: Colors.black.withOpacity(0.2),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.black45,
                            style: BorderStyle.solid
                        )
                    )
                ),
                suggestionBuilder: (searchedName) {

                  ///Finding Object by searched name
                  DogModel data = dogsList.singleWhere((element) => element.name.toString() == searchedName);

                  if(data.age! >= lowerAgeFilter.value &&
                      data.age! <= higherAgeFilter.value &&
                      data.adopted == adoptedFilter.value
                  ){
                    return InkWell(
                      onTap: (){
                        selectedBreed.value = data;
                        Get.to(DetailsPage());
                      },
                      child: Container(
                          height: 40,
                          margin: const EdgeInsets.all(1),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Theme.of(context).hintColor,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(
                            child: Text(
                                data.name.toString(),
                                style: Theme.of(context).textTheme.subtitle1
                            ),
                          )
                      ),
                    );

                  }else{
                    return const SizedBox();
                  }
                },
                onChanged: (value) => print(value)
            )
        ),
      ],
    );
  }

}
