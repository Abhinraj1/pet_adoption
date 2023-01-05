
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:nymble/Helper/Constants/Constants.dart';

class ImageViewer extends StatelessWidget {
   ImageViewer({Key? key}) : super(key: key);
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return  EasyImageViewPager(
      doubleTapZoomable: true,
      easyImageProvider: SingleImageProvider(
        AssetImage(selectedBreed.value.image.toString())
      ),
      pageController: _pageController,);
  }
}
