import 'package:expandable_text/expandable_text.dart';
import 'package:just_audio/just_audio.dart';
import 'package:simple_quran_apps/constants.dart';
import 'package:flutter/material.dart';

class Assyafatain extends StatefulWidget {
  const Assyafatain({Key? key}) : super(key: key);

  @override
  _AssyafatainState createState() => _AssyafatainState();
}

class _AssyafatainState extends State<Assyafatain> {
  late AudioPlayer player;
  late AudioPlayer player2;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player2 = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    player2.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Makhraj"),
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
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Makhraj Assyafatain",
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
                      height: 270,
                      child: Image.asset("assets/images/syafatain.png",
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: ExpandableText(
                            'Bibir mulut dalam sebelah bawah diangkat mengenai hujung gigi gunting atas.',
                            expandText: 'show more',
                            maxLines: 10,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.justify))
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      try {
                        await player.setAsset("assets/audio/mim dengung.mp3");
                        player.play();
                      } on PlayerException catch (e) {
                        print("Error code: ${e.code}");
                        print("Error message: ${e.message}");
                      } on PlayerInterruptedException catch (e) {
                        print("Connection aborted: ${e.message}");
                      } catch (e) {
                        print(e);
                      }
                    },
                    padding: EdgeInsets.symmetric(horizontal: 100),
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
                          Icon(Icons.volume_up_outlined),
                          Text(
                            " ف ",
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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: ExpandableText(
                            'Dibaca dengan dua bibir mulut apabila dibulatkan (muncung) ke hadapan secara terbuka.',
                            expandText: 'show more',
                            maxLines: 10,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.justify))
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      try {
                        await player.setAsset("assets/audio/mim dengung.mp3");
                        player.play();
                      } on PlayerException catch (e) {
                        print("Error code: ${e.code}");
                        print("Error message: ${e.message}");
                      } on PlayerInterruptedException catch (e) {
                        print("Connection aborted: ${e.message}");
                      } catch (e) {
                        print(e);
                      }
                    },
                    padding: EdgeInsets.symmetric(horizontal: 100),
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
                          Icon(Icons.volume_up_outlined),
                          Text(
                            " و ",
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
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: ExpandableText(
                            'Dibaca dengan dua bibir dirapatkan secara ringan. ',
                            expandText: 'show more',
                            maxLines: 10,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.justify))
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      try {
                        await player.setAsset("assets/audio/mim dengung.mp3");
                        player.play();
                      } on PlayerException catch (e) {
                        print("Error code: ${e.code}");
                        print("Error message: ${e.message}");
                      } on PlayerInterruptedException catch (e) {
                        print("Connection aborted: ${e.message}");
                      } catch (e) {
                        print(e);
                      }
                    },
                    padding: EdgeInsets.symmetric(horizontal: 30),
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
                          Icon(Icons.volume_up_outlined),
                          Text(
                            " ب ",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      try {
                        await player.setAsset("assets/audio/mim dengung.mp3");
                        player.play();
                      } on PlayerException catch (e) {
                        print("Error code: ${e.code}");
                        print("Error message: ${e.message}");
                      } on PlayerInterruptedException catch (e) {
                        print("Connection aborted: ${e.message}");
                      } catch (e) {
                        print(e);
                      }
                    },
                    padding: EdgeInsets.symmetric(horizontal: 50),
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
                          Icon(Icons.volume_up_outlined),
                          Text(
                            " م  ",
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
          ),
        ),
      ),
    );
  }
}
