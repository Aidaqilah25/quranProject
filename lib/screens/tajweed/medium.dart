import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../constants.dart';
import 'detail_screen.dart';
import 'model.dart';

class Medium extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Medium> {
  List<Item> _itemList = [
    Item(
        title: "Hamzah Wasal",
        longText:
            "Hamzah Wasal adalah hamzah zaidah (tambahan) yang berada pada awal. Ia harus diucapkan jika berada di awal kalimah dan  tidak diucapkan jika disambung dengan ayat sebelumnya.\n\nHamzah Wasal dibaca Dhommah(baris depan) apabila huruf ketiga adalah Dhommah. Jika huruf ketiga adalah Fathah (baris atas) atau Kasrah (baris bawah), ia perlu dibaca dengan Kasrah.",
        image: "assets/images/hamzah_wasal.jpg"),
    Item(
        title: "Wajibul Ghunnah",
        longText:
            "Ia berlaku pada ن  dan م yang mempunyai tanda tasydid (sabdu) diatasnya. Al-Jalalah berkata: jika diwaqafkan di hujung ayat, kadar bacaannya adalah 2 atau 4 atau 6 harakat.",
        image: "assets/images/wajibul ghunnah.png"),
    Item(
        title: "Mad Asli",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Qalqalah",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Iqlab",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Izhar Halqi",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Izhar Syafawi",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Ikhfa’ Haqiqi",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Ikhfa’ Syafawi",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Idgham Ma’al Ghunnah",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
    Item(
        title: "Idgham Bila Ghunnah",
        longText:
            "The insight and experience of others is a valuable source of inspiration and motivation. And learning from successful leaders and entrepreneurs is a fantastic way to grow.\n\nLife throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
        image: "assets/colouredquran.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text('Tajweed'),
          backgroundColor: secondaryColor,
        ),
        body: Center(
            child: ListView.builder(
          itemCount: _itemList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(item: _itemList[index])),
                  );
                },
                child: Card(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(18),
                    child: Text(
                      _itemList[index].title,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ));
          },
        )));
  }
}
