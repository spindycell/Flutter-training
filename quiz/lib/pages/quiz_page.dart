import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageStates();
}

class QuizPageStates extends State<QuizPage> {
  @override
  Widget build(BuildContext context){
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
           new AnswerButton(true, () => print("Your answered true")),
           new QuestionText(1,"what the fuck "),
           new AnswerButton(false, () => print("Your answered false")),
          ],
        ),
        new CorrectWrongOverlay(false)
      ],
    );
  }
}