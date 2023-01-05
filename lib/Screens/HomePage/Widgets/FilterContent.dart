import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tuna_flutter_range_slider/tuna_flutter_range_slider.dart';
import '../../../Helper/Constants/Constants.dart';
import '../../../Helper/TextManager/TextStyleManager.dart';


///Filter content
///The content shown on filter pop up
Widget content(BuildContext context){
  return Column(
    children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("Age",
              style:  TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ) ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),

      SizedBox(
        height: 25,
        width: 250,
        child: Center(
            child: FlutterRangeSlider(
              selectByTap: true,
              trackBar:  FlutterSliderTrackBar(
                  activeDisabledTrackBarColor: Colors.white,
                  inactiveDisabledTrackBarColor: Colors.red,
                  activeTrackBarDraggable: true,
                  inactiveTrackBar:const BoxDecoration(
                      color: Colors.white54
                  ),
                  activeTrackBarHeight: 5,
                  activeTrackBar: BoxDecoration(
                      color: Theme.of(context).dividerColor
                  )
              ),
              tooltip: FlutterSliderTooltip(
                  textStyle: Style().toolTip,
                  boxStyle: FlutterSliderTooltipBox(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(8)
                      ))
              ),
              values: [lowerAgeFilter.value, higherAgeFilter.value],
              max: 9,
              min: 1,
              onDragging: (handlerIndex, lowerValue, upperValue) {
                lowerAgeFilter.value = lowerValue;
                higherAgeFilter.value = upperValue;
              },

              onDragCompleted: (handlerIndex, lowerValue, upperValue) {
                lowerAgeFilter.value = lowerValue;
                higherAgeFilter.value = upperValue;
              },
            )
        ),
      ),
      const SizedBox(
        height: 30,
      ),

      Obx(() {
        return MaterialButton(
          onPressed: (){
            adoptedFilter.value = !adoptedFilter.value;
          },
          color: adoptedFilter.value ? Colors.green : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          height: 30,
          child: Text("Show Adopted only",
            style: Style().filterBrn,),
        );
      }
      ),
    ],
  );
}
