import 'package:flutter/material.dart';
class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Scaffold(

        appBar: AppBar(
          title: const Text('Leaderboard'),
        ),
        body:Container(
          color: Colors.blue[50],
          child: Column(
            children: [
              Container(
                color: Colors.blue[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: (){}, child: const Text('Quiz Contest',)),
                    TextButton(onPressed: (){}, child: const Text('Battle Quiz',)),
                    TextButton(onPressed: (){}, child: const Text('Quiz Anytime')),
                  ],
                ),
              ),
              Container(
                height: 224,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 69,left: 23,right: 23),
               // padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Winning Leaderboard',style: TextStyle(color: Colors.blue,fontSize: 14),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.emoji_events_sharp,size: 33,color: Colors.black,),
                            ),
                            const SizedBox(height: 15,),
                            const Text('09'),
                            const SizedBox(height: 15,),
                            const Text('Contest Win'),
                            const Text(''),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.emoji_events_sharp,size: 33,color: Colors.black,),
                            ),
                            const SizedBox(height: 15,),
                            const Text('09'),
                            const SizedBox(height: 15,),
                            const Text('Contest'),
                            const Text('Participated'),

                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.emoji_events_sharp,size: 33,color: Colors.black,),
                            ),
                            const SizedBox(height: 15,),
                            const Text('09'),
                            const SizedBox(height: 15,),
                            const Text('Total Contests'),
                            const Text(''),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ]
          ),
        ),
      ),
    );
  }
}
