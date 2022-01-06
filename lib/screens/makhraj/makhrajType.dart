import 'package:simple_quran_apps/constants.dart';
import 'package:simple_quran_apps/screens/makhraj/jauf.dart';
import 'package:simple_quran_apps/screens/makhraj/khaisyum.dart';
import 'package:simple_quran_apps/screens/makhraj/makhrajHalqi.dart';
import 'package:simple_quran_apps/screens/makhraj/syafatain.dart';
import 'package:simple_quran_apps/screens/tajweed/basic.dart';
import 'package:flutter/material.dart';

import 'halqi.dart';

class MakhrajType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Jenis-jenis Makhraj"),
        centerTitle: true,
        backgroundColor: secondaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Image.asset("assets/images/alifbata_.png",
                        fit: BoxFit.contain),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Belajar Jenis-jenis Makhraj",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlJauf()),
                );
              },
              padding: EdgeInsets.zero,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.white54, width: 2)),
              child: Container(
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Makhraj Al-Jauf",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Halqi()),
                );
              },
              padding: EdgeInsets.zero,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.white54, width: 2)),
              child: Container(
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Makhraj Al-Halq",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Basic()),
                );
              },
              padding: EdgeInsets.zero,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.white54, width: 2)),
              child: Container(
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Makhraj Al-Lisan",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Assyafatain()),
                );
              },
              padding: EdgeInsets.zero,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.white54, width: 2)),
              child: Container(
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Makhraj Assyafatan",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlKhaisyum()),
                );
              },
              padding: EdgeInsets.zero,
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.white54, width: 2)),
              child: Container(
                width: 300,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Makhraj Al-Khaisyum",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
