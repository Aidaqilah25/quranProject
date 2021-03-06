import 'package:flutter/material.dart';
import 'package:simple_quran_apps/screens/readQuran/configuration/typography.dart';

class HeaderDetailSurah extends StatelessWidget {
  const HeaderDetailSurah({
    Key? key,
    @required this.arguments,
  }) : super(key: key);

  final arguments;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.6),
            blurRadius: 16,
            offset: Offset(0, 25),
            spreadRadius: -20,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.teal, Color(0xff26A69A)]),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            //Images
            Positioned(
              right: -60,
              bottom: -50,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/quran_icon.png',
                  height: 240,
                ),
              ),
            ),

            //Content
            Container(
              height: MediaQuery.of(context).size.height / 6,
              margin: EdgeInsets.only(top: 20),
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(arguments.name.transliteration.id,
                        style: Theme.of(context).textTheme.headline5),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(arguments.name.translation.id,
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200,
                      child: Divider(
                        color: whiteColor,
                        thickness: 0.8,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                        '${arguments.revelation.id.toString().replaceAll('Id.', '')} - ${arguments.numberOfVerses} ayat',
                        style: Theme.of(context).textTheme.subtitle2),
                  ),
                ],
              ),
            ),

            //Bismillah icon
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'assets/images/bismillah.png',
                    height: 40,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
