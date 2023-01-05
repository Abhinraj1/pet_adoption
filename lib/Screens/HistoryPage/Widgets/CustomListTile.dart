import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../../Helper/TextManager/TextStyleManager.dart';



class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key,
  required this.name,
  required this.image
  }) : super(key: key);

final String name,image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 300,
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:  Colors.white.withOpacity(0.9),
            image:  DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                opacity: 0.3
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                    text: "NAME: ",
                    style: Style().title,
                    children: [
                      TextSpan(
                        text: name,
                        style: Style().subTitle,
                      )
                    ]
                ) ),
          ),
        ),
      ),
    );
  }
}
