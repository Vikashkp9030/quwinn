import 'package:flutter/material.dart';
class HowToPlayPage extends StatelessWidget {
  const HowToPlayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How To Play'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15,bottom: 15),
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('                              How To Play',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 18),),
              Text('''
              
To play the quiz contest offered by Quwinn on its platform, you need to follow the below steps:

1.	Download the Quwinn application and register with the platform.

2.	Log-in to your Quwinn account and select the quiz league you would like to join. You can choose from different types of contests based on entry fee amount, winning amount, number of participants etc.

3.	After choosing your contest, pay the pre-defined entry fee amount and start playing the quiz by answering the question shown on your mobile screens.


Quiz Contest

- You can select the quiz of choice and will pay for the contest amount from your Quwinn Wallet.

- As soon as a quiz starts, then the deadline for it will be 5 minutes before it starts, that is, the contest can be joined up to 5 minutes before, after that no contest will be able to join.  These 5 minutes will be for the user to be mentally pprepared.
For example if quiz starts at 9:00 AM then deadline will 8:55 AM.

- There will be 20 Questions from different topics in each and every quiz and 15 seconds will given for every question to answered.

- Maximum Marks for a quiz__ 300.


Battle Quiz

 - You can select any of the tournament of choice and can pay for the contest fees and join the match.

 - As soon as user joins a contest , Matching screen will open and searching start for contest and will continue for 20 seconds, quiz start immediately when maximum number of participants found, if not found maximum then it will start with joined participants, with reduced winning amount.

 - If maximum required users do not join, the winning amount will be automatically reduced according to the number of users who join.

 - If not found minimum (2 minimum users always required) number of participants then selected contest for that user will suspend and money will refund to the user’s wallet.

 - You will also see the leader board here on top of screen with real time quiz participants ranking and points.

 - There will be 10 Questions from different topics in each and every leagues/contests and 10 seconds will given for every question to answered.

 - Marks for a league/contest__ 100.


Quiz Anytime

- Here you’ll see the Always Live quiz category, every contest will live here for 2 hours.

- You can select the quiz of choice and will pay for the contest amount from your Quwinn Wallet.

- As you pay your willing entry fee, you’ll immediately enter in quiz to answering the questions after a glimpse of rules.

- When you finished all questions, you’ll jumped to the leaderboard for quiz anytime, here you can see your performance along with rank.

- There will be 15 Questions from different topics in each and every quiz and 15 seconds will given for every question to answered.

- Maximum Marks for a quiz__ 225.



                          Watch Tutorial Videos

[By tapping here user will go to the tutorial section]

''',style: TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
