import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:simple_quran_apps/screens/makhraj/model.dart';

class MakhrajHalqi extends StatefulWidget {
  const MakhrajHalqi({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MakhrajHalqi> {
  late AudioPlayer audio;

  @override
  void initState() {
    super.initState();
    audio = AudioPlayer();
  }

  @override
  void dispose() {
    audio.dispose();
    super.dispose();
  }

  List<Item> _itemList = [
    Item(
        text1: "Pangkal kerongkong:",
        text2: " م",
        titleText: " م",
        text3: "Penjelasan sebutan",
        longText:
            "Ia bermula dari kecil hingga kebesar dan memerlukan kasih sayang .",
        audio: "assets/audio/moo.mp3",
        text4: "ممممممم مم مم مم مم"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Type of Makhraj'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Makhraj Halqi', style: TextStyle(fontSize: 25.0)),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'From the top part of the throat:',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {},
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    shape: StadiumBorder(
                        side: BorderSide(color: Colors.white54, width: 2)),
                    child: Container(
                      width: 80,
                      height: 50,
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Colors.amber,
                        shape: StadiumBorder(),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            " ه",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {},
                    padding: EdgeInsets.zero,
                    shape: StadiumBorder(
                        side: BorderSide(color: Colors.white54, width: 2)),
                    child: Container(
                      width: 80,
                      height: 50,
                      padding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Colors.amber,
                        shape: StadiumBorder(),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            " ء",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
