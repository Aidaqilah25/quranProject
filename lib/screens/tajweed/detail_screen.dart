import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'model.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  item.title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  item.longText,
                  style: TextStyle(fontSize: 18.5),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 100, child: Image.asset(item.image)),
            ]),
          ),
        ),
      ),
    );
  }
}
