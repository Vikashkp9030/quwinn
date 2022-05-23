import 'package:flutter/material.dart';
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.only(left: 22,top: 24,right: 25,bottom: 43),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 38,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('You have unread notification'),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.playlist_play_outlined)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
