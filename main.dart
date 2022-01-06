import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_quran_apps/screens/splash.dart';
import 'package:simple_quran_apps/screens/readQuran/views/detail_surah/detail_surah.dart';
import 'package:simple_quran_apps/screens/readQuran/views/home/quranHome.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import './screens/readQuran/configuration/typography.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => QuranHome(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/detail-surah',
          page: () => DetailSurah(),
          transition: Transition.cupertino,
        ),
      ],
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: whiteColor,
        fontFamily: GoogleFonts.varela().fontFamily,
        textTheme: TextTheme(
          headline5: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: blackColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            color: secondaryColor,
            fontSize: 14,
          ),
          subtitle2: TextStyle(
            color: whiteColor,
            fontSize: 14,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: whiteColor,
          elevation: 0,
        ),
        primaryIconTheme: IconThemeData(
          color: secondaryColor,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
