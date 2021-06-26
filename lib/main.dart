import 'package:flutter/material.dart';
import 'package:i_am_unicorn/screens/Home_page.dart';
import 'package:i_am_unicorn/screens/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_am_unicorn/util/Myroute.dart';
import 'package:i_am_unicorn/widgets/theme.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lighttheme(context),
      //
      // ThemeData(fontFamily: GoogleFonts.lato().fontFamily,
      //
      //   primarySwatch: Colors.deepPurple,
      //   appBarTheme: AppBarTheme(
      //     color: Colors.white,
      //     elevation: 0.0,
      //     iconTheme: IconThemeData(
      //       color: Colors.black,
      //     ),
      //     textTheme: Theme.of(context).textTheme,
      //
      //   )
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),Myroute.Homeroute:(context)=>HomePage(),
        Myroute.Logineroute:(context)=>Loginpage(),
      },
    );
  }
}
