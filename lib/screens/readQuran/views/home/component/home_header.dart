import 'package:flutter/material.dart';

import 'package:simple_quran_apps/screens/readQuran/configuration/typography.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
        Container(
          width: double.infinity,
          height: 170,
          margin: EdgeInsets.fromLTRB(14, 0, 14, 20),
          padding: EdgeInsets.only(left: 14, top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.teal, Color(0xff26A69A)],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Stack(
              children: [
                Positioned(
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.menu_book, color: whiteColor, size: 20),
                          SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Surah title
                          Text(
                              "Bacalah Al-Quran itu kerana sesungguhnya ia akan datang pada Hari Kiamat sebagai pemberi syafa'at bagi para pembacanya. ",
                              style: Theme.of(context)
                                  .textTheme
                                  .apply(bodyColor: whiteColor)
                                  .subtitle1),

                          SizedBox(height: 20),

                          //Current ayat
                          Text("(Hadith Riwayat Imam Muslim)",
                              style: Theme.of(context)
                                  .textTheme
                                  .apply(fontSizeDelta: -4)
                                  .subtitle2),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -40,
                  bottom: -40,
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      'assets/images/quran_icon.png',
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
