import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //final int questionIndex;
  //final Function answerQuestion;

  /*Home({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });*/

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sign in',
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.white,

          // Define the default font family.
          fontFamily: 'SedgwickAve'),
    );
  }
}
