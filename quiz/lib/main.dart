import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("Quiz App"),
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
            ),
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: QuizBody(),
            ))));
  }
}

class QuizBody extends StatefulWidget {
  const QuizBody({Key? key}) : super(key: key);

  @override
  State<QuizBody> createState() => _QuizBodyState();
}

List<Icon> scoreTrack = [];

void checkAnswer(bool userPickedAnswer){
  bool corretAnswer = quizBrain.getQuestionAns();
  if(userPickedAnswer == corretAnswer){
    scoreTrack.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  } else {
    scoreTrack.add(Icon(Icons.close, color: Colors.red));
  }

}

class _QuizBodyState extends State<QuizBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  setState(() {
                    checkAnswer(true);
                    quizBrain.nextQuestion();
                  });
                },
                child: Text("True",
                    style: TextStyle(color: Colors.green, fontSize: 30))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  setState(() {
                    checkAnswer(false);
                    quizBrain.nextQuestion();
                  });
                },
                child: Text("False",
                    style: TextStyle(color: Colors.red, fontSize: 30))),
          ),
        ),
        Row(
          children: scoreTrack,
        )
      ],
    );
  }
}
