import 'package:flutter/material.dart';
class MyContestsPage extends StatefulWidget {
  const MyContestsPage({Key? key}) : super(key: key);

  @override
  State<MyContestsPage> createState() => _MyContestsPageState();
}

class _MyContestsPageState extends State<MyContestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Contests'),
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
                  TextButton(onPressed: (){}, child: const Text('Upcoming',)),
                  TextButton(onPressed: (){}, child: const Text('Live',)),
                  TextButton(onPressed: (){}, child: const Text('Completed')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 550,
              margin: const EdgeInsets.only(left: 22,top: 40,right: 25,bottom: 30),
              child: const SingleChildScrollView(
              ),
            ),
          ],
        ),
      ),
    );
  }
}
