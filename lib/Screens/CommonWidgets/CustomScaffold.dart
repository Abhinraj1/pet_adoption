import 'package:flutter/material.dart';


/// CustomScaffold to show background image
class CustomScaffold extends StatelessWidget {
  final String imgName;
  final Widget child;
  const CustomScaffold({Key? key,
    required this.imgName,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgName),
                    fit: BoxFit.cover,
                colorFilter:
               ColorFilter.mode(
                 Theme.of(context).canvasColor,
                    BlendMode.darken),
                )
            ),
            child: child,
          )

    );
  }
}