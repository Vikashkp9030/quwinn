import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';
import 'package:quwinn/pages/feedback_page.dart';

import 'package:quwinn/pages/leader_board_page.dart';
import 'package:quwinn/pages/more_page.dart';
import 'package:quwinn/pages/my_profile_page.dart';
import 'package:quwinn/pages/mycontests_page.dart';
import 'package:quwinn/pages/need_help_page.dart';
import 'package:quwinn/pages/notifications_page.dart';
import 'package:quwinn/pages/settings_page.dart';
import 'package:quwinn/pages/wallet_page.dart';

import '../authentication/login_page.dart';
import '../styles/text_styles.dart';
class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage>{
  User? currentUser = FirebaseAuth.instance.currentUser;
  String currentUserName = '';
  String currentUserPicURL = '';


  _fetch() async{
    final fbCurrentUser =FirebaseAuth.instance.currentUser;
    if(fbCurrentUser != null){
      await FirebaseFirestore.instance.collection('users').doc(fbCurrentUser.uid).get().
      then((ds){
        currentUserName = ds.get('fullname');
        currentUserPicURL = ds.get('profilepic');
      }).catchError((e){
        log(e);
      });

    }
  }


  @override
  Widget build(BuildContext context) {

    return Material(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue[800],
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationsPage()));
              }, icon: const Icon(Icons.notifications)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
            ],
          ),
          drawer: Drawer(


            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  
                  children: [
                    Container(
                      width: double.infinity,
                      height: 57,
                      margin: const EdgeInsets.only(top:31),
                      color: Colors.lightBlue[800],
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FutureBuilder(
                                  future:_fetch(),
                                  builder: (context,snapshot){
                                    if(snapshot.connectionState != ConnectionState.done) {
                                      return Row(
                                          children: [
                                            CircleAvatar(
                                              foregroundColor: Colors.white,
                                              radius: 26,
                                              child: IconButton(onPressed:(){}, icon: const Icon(Icons.person)),
                                            ),
                                            const SizedBox(width: 5,),
                                            const Text('Waiting',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                          ],
                                        );
                                    }

                                    return Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 26,
                                          foregroundColor: Colors.white,
                                          backgroundImage:
                                          NetworkImage(currentUserPicURL),
                                        ),
                                        const SizedBox(width: 5,),
                                        Text(currentUserName,style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                      ],
                                    );
                                }

                               ),
                               IconButton(onPressed:(){
                                   Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.arrow_back_ios_outlined),
                                  color: Colors.white,
                               )
                             ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyProfilePage()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.person,size: 30,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('MY PROFILE',style: ts3,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LeaderBoardPage()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.leaderboard,size: 30,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('LEADERBOARD',style: ts3,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeedbackPage()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.feedback,size: 30,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('FEEDBACK',style: ts3,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const NeedHelpPage()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.help,size: 30,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('NEED HELP',style: ts3,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPage()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.settings,size: 30,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('SETTINGS',style: ts3,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.share,size: 30,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('SHARE',style: ts3,),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50,height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.popUntil(context, (route) => route.isFirst);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                            const LogInPage()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 7,),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.logout,size: 20,)
                          ),
                          const SizedBox(width: 31,),
                          const Text('LOG OUT',style: ts3,),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Design & developed by',style:TextStyle(fontSize: 10),),
                        Text(' GoTo SIOC',style: TextStyle(fontSize: 10,color: Colors.lightBlue),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('  Version 1.0'),
                        TextButton(onPressed: (){}, child: const Text('Update',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.blue),))
                      ],
                    ),
                  ],
                ),
               
             



              ],
            ),

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
                const SingleChildScrollView(
                ),
              ],
            ),
           ),

          bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon:const Icon(
                        Icons.water_damage_outlined,
                        color: Colors.black,
                        size: 35,
                     )
                   ),
                  const Text('   HOME   ',style: TextStyle(color: Colors.black),)
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const WalletPage()));
                      },
                      icon:const Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.black,
                        size: 30,
                      )
                  ),
                  const Text('  WALLET  ',style: TextStyle(color: Colors.black),)
                ],
              ),

              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyContestsPage()));
                      },
                      icon:const Icon(
                        Icons.emoji_events_sharp,
                        color: Colors.black,
                        size: 30,
                      )
                  ),
                  const Text('MY CONTEST',style: TextStyle(color: Colors.black),)
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MorePage()));
                      },
                      icon:const Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.black,
                        size: 35,
                      )
                  ),
                  const Text('   MORE   ',style: TextStyle(color: Colors.black),)
                ],
              ),

            ],
          ),
        ),

       ),
    );
   }
}
