import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/controllers/menuController.dart';
import 'package:web_project/layout.dart';
import 'package:web_project/screens/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dash',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}
