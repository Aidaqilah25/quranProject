import 'package:flutter/cupertino.dart';
import 'package:just_audio/just_audio.dart';
import 'package:simple_quran_apps/screens/readQuran/models/specific_surah_model.dart';

class Item {
  String text1;
  String text2;
  String titleText;
  String text3;
  String longText;
  String audio;
  String text4;
  Item(
      {required this.text1,
      required this.text2,
      required this.titleText,
      required this.text3,
      required this.longText,
      required this.audio,
      required this.text4});
}
