import 'package:flutter/material.dart';

void main() => runApp(MyApp());
//class Person{
// String name;
//int age;
//Person({this.name = 'Max', this.age=30});
//}
// in main function
// var p1 = Person(name: 'Max', age: 30);

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print('Answer 1 Chosen');
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s my favourite colour?',
      'What\' my favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Who Am I?'),
        ),
        body: Column(
          children: [
            Text('The Questions!'),
            ElevatedButton(onPressed: answerQuestion,
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
