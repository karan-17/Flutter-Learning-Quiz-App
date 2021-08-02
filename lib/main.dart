import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
void main() => runApp(MyApp());
//class Person{
// String name;
//int age;
//Person({this.name = 'Max', this.age=30});
//}
// in main function
// var p1 = Person(name: 'Max', age: 30);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //connected the 2 classes Myapp and MyAppState
  }
}//private class conversion syntax "_MyAppState" leading underscore
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex +=1;
    });
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s my favourite colour?',
      'What\'s  my favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Who Am I?'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion,
              child: Text('Answer 1'),),
            ElevatedButton(onPressed: ()=> print('Answer 2 chosen'),//anonymous function
                child: Text('Answer 2')),
            ElevatedButton(onPressed: ()=> print('Answer 3 chosen'),
                child: Text('Answer 3')),
            ElevatedButton(onPressed: ()=> print('Answer 4 chosen'),
                child: Text('Answer 4')),
          ],
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
  }

