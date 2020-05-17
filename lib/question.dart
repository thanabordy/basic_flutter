import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTExt;

  Question(this.questionTExt);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionTExt,
        style: TextStyle(
          fontSize: 40,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 6
            ..color = Colors.blue[700],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
