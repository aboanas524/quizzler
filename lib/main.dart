
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();
void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home:Quizzler()));
class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}
class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];
  void checkAnswer(bool userPickedAnswer)
  {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState((){
    if (userPickedAnswer == correctAnswer) {
      scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
    }
    else{
      scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
    }
    });
    quizBrain.nextQuestion();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              height: 50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              color: Colors.green,
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                ' True ', style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              height: 50,
              color: Colors.red,
              onPressed: () {
                checkAnswer(false);
                },
              child: Text(' False ',
                style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
          ),
          SizedBox(
            height: 20,
            child: Row(
              children: scoreKeeper,
            ),
          ),
        ],
      ),
    );
  }
}
