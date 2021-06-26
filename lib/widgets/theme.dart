import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Mytheme{


  static ThemeData  lighttheme(BuildContext context) => ThemeData(fontFamily: GoogleFonts.lato().fontFamily,

      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,

      )
  );
}