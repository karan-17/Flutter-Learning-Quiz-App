import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

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
} //private class conversion syntax "_MyAppState" leading underscore

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {//Map is a collection of key-value combo
        //Map is a separate class in dart, here shorthand used for map "{...}"
        'questionText': 'What\'s my favourite colour?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      }, //Map
      {
        'questionText': 'What\'s  my favourite animal?',
        'answers': ['Cat', 'Dog', 'Rabbit', 'Fish'],
      }, //Map
      {
        'questionText': 'What\'s  my favourite dish?',
        'answers': ['North Indian', 'South Indian', 'Continental', 'Chinese'],
      }, //Map
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Who Am I?'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()//executes a function on every element of the list
          ],// ... take a list, pull all values out of list, add them to surrounding list as individual values
          //adding values to the lists of list
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}
