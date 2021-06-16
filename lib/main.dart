import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_catelog/pages/home_page.dart';
import 'package:flutter_demo_catelog/pages/login_page.dart';
import 'package:flutter_demo_catelog/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      routes: {
        MyRoutes.loginRoute: (context) => Login_Page(),
        MyRoutes.homeRoute: (context) => HomePage()
      },
    );
  }
}
