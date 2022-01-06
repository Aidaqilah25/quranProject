import 'package:simple_quran_apps/constants.dart';
import 'package:simple_quran_apps/screens/makhraj/graph.dart';
import 'package:simple_quran_apps/screens/makhraj/makhrajType.dart';
import 'package:simple_quran_apps/screens/tajweed/basic.dart';
import 'package:flutter/material.dart';

void main() => runApp(MakhrajGraph());

class Makhraj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text("Tajweed"),
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
                    "Belajar Makhraj",
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
              height: 25,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MakhrajGraph()),
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
                  "Rajah Ringkasan Makhraj",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MakhrajType()),
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
                  "Jenis-Jenis Makhraj Umum",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 25,
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
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "Kuiz",
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
