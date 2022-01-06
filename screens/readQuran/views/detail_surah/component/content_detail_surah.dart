import 'package:flutter/material.dart';
import 'package:simple_quran_apps/screens/readQuran/configuration/typography.dart';

class ContentDetailSurah extends StatelessWidget {
  final data;
  final int index;
  ContentDetailSurah({this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    var verses = data.verses[index];

    return Column(
      children: [
        //Event widget
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Number
              Container(
                margin: EdgeInsets.fromLTRB(10, 4, 0, 4),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(verses.number.inSurah.toString(),
                      style: Theme.of(context).textTheme.subtitle2),
                ),
              ),
            ],
          ),
        ),

        //Content
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  text: verses.text.arab,
                  style: Theme.of(context)
                      .textTheme
                      .apply(fontSizeDelta: 6)
                      .bodyText2,
                ),
              ),
              SizedBox(height: 18),
              Text(verses.translation.id,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
        ),
      ],
    );
  }
}
