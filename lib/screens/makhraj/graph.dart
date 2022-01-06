import 'package:expandable_text/expandable_text.dart';
import 'package:simple_quran_apps/constants.dart';
import 'package:flutter/material.dart';

class MakhrajGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Rajah Ringkasan Makhraj"),
        centerTitle: true,
        backgroundColor: secondaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Tempat Keluar Huruf Hijaiyah",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 312,
                      height: 370,
                      child: Image.asset("assets/images/rajah.jpg",
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: ExpandableText(
                          'Ada lima bahagian makhraj:\n\n1.	Rongga mulut dan kerongkong (huruf mad): ا و ي\n2.	Bahagian kerongkong: ء ه ح ع خ غ\n3.	Bahagian lidah: ك ق ش ج ي  ض  ز س ص  ر ن ل ت د ط  ث ذ ظ\n4.	Bahagian bibir mulut: ف و م ب\n5.	Bahagian hidung(dengung): نّ  مّ\n',
                          expandText: 'show more',
                          maxLines: 10,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
