import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  String _answerText = "";
  bool _isCorrect = false;
  void _onPressTomHank() {
    print('This is Tom Hank');
    setState(() {
      _questionIndex = _questionIndex + 1;
      _answerText = "True";
    });
    print('Index = $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is your daddy?',
      'Who is your mom?',
      'Who is your brother'
    ];
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Title'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              onPressed: () {
                print('A');
                setState(() {
                  _answerText = "False";
                  _isCorrect = true;
                });
              },
              child: Text('A'),
            ),
            RaisedButton(
              onPressed: () {
                print('B');
                setState(() {
                  _answerText = "True";
                });
              },
              child: Text('B'),
            ),
            RaisedButton(
              onPressed: _onPressTomHank,
              child: Text('C'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                onPressed: () {
                  print('D');
                  setState(() {
                    _answerText = "False";
                    _isCorrect = false;
                  });
                },
                child: Text('D'),
              ),
            ),
            _isCorrect ? Question("True") : Text("False")
          ],
        ),
      ),
    );
  }
}
