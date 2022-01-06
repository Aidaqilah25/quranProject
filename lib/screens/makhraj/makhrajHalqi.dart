import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MakhrajHalqi());
}

class MakhrajHalqi extends StatefulWidget {
  const MakhrajHalqi({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MakhrajHalqi> {
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
                    onPressed: () async {
                      try {
                        await player.setAsset("assets/audio/example.mp3");
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
                          Icon(Icons.play_arrow_rounded),
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
                    onPressed: () async {
                      try {
                        await player2
                            .setAsset("assets/audio/horse_whinney_2.mp3");
                        player2.play();
                      } on PlayerException catch (e) {
                        print("Error code: ${e.code}");
                        print("Error message: ${e.message}");
                      } on PlayerInterruptedException catch (e) {
                        print("Connection aborted: ${e.message}");
                      } catch (e) {
                        print(e);
                      }
                    },
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
                          Icon(Icons.play_arrow_rounded),
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
