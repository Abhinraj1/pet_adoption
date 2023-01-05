import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Style{
  TextStyle search =
  const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black87,
  );

  TextStyle suggestions = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.black54,
  );

  TextStyle toolTip = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
    color: Colors.black54,
  );

  TextStyle dogName = const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    color: Colors.white70,
  );



  TextStyle title =  GoogleFonts.aclonica(
    color: Colors.black45,
    fontWeight: FontWeight.w800,
    fontSize: 16,
  ) ;

  TextStyle subTitle = const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 25,
    color: Colors.black54,

  );

  TextStyle filterBrn = const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 16,
    color: Colors.white70,

  );
  TextStyle adoptedText =  TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 13,
    color: Colors.yellow.withOpacity(0.8),

  );

  TextStyle adoptBtn = GoogleFonts.assistant(
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: 25,
  ) ;

  TextStyle confettiTitle = GoogleFonts.assistant(
    color: Colors.deepOrange.shade800,
    fontWeight: FontWeight.w800,
    fontSize: 25,
  ) ;
}