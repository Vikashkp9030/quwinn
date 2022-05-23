import 'package:flutter/material.dart';
class QuizPointSystemPage extends StatelessWidget {
  const QuizPointSystemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Point System'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15,bottom: 15),
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('                            Point System',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18),),
              Text('''
              
              
The users are awarded scores on the basis of the answered questions in quiz.



Easy Marking System

1 point for each remaining second.

“The more seconds you save , then more points you get”

For example If the user saves 5 seconds in answering 1 question, he will get 5 points.



In an event wherein there’s a tie between two or more users the winnings are distributed between the users equally.

              ''' ,style: TextStyle(fontSize: 16),)
            ],
          ),
        ),
      ),
    );
  }
}
