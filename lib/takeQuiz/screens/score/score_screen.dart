import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_quran_apps/screens/home_screen.dart';
import 'package:simple_quran_apps/takeQuiz/constants.dart';
import 'package:simple_quran_apps/takeQuiz/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_quran_apps/takeQuiz/screens/quiz/quiz_screen.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 6),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kBlackColor),
              ),
              Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kBlackColor),
              ),
              Spacer(flex: 2),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
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
                    "Play Again",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Spacer(flex: 1),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
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
                    "Back to Homepage",
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Spacer(flex: 7),
            ],
          )
        ],
      ),
    );
  }
}
