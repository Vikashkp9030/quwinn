import 'package:flutter/material.dart';
import 'package:quwinn/more_page/aboutus_page.dart';
import 'package:quwinn/more_page/community_guidelines_page.dart';
import 'package:quwinn/more_page/how_to_play_page.dart';
import 'package:quwinn/more_page/privacy_policy_page.dart';
import 'package:quwinn/more_page/quiz_point_system_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quwinn/more_page/terms_and_conditions_page.dart';

import '../more_page/legality_page.dart';
class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
      ),
      body: Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.only(left: 23,right: 24,top: 35),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 97,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: const [
                          Icon(Icons.phone_android_outlined,),
                          SizedBox(width: 15,),
                          Text('About Us',style: TextStyle(fontSize: 14)),
                        ],
                      ),

                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutUS()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22,)
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: const [
                          Icon(Icons.transfer_within_a_station),
                          SizedBox(width: 15,),
                          Text('Community Guidelines',style: TextStyle(fontSize: 14)),
                        ],
                      ),

                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CommunityGuidelines()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22)
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 19,),
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: const [
                          Icon(Icons.how_to_vote_sharp),
                          SizedBox(width: 15,),
                          Text('How To Play',style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HowToPlayPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios ,size: 22)
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Row(
                        children: const [
                          Icon(Icons.currency_rupee),
                          SizedBox(width:15,),
                          Text('Quiz Point System',style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const QuizPointSystemPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22)
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Row(
                        children: const [
                          Icon(Icons.video_collection_outlined),
                          SizedBox(width: 15,),
                          Text('Tutorial Videos(How to videos)',style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      IconButton(
                          onPressed:() async{
                       await launch('https://youtube.com/channel/UCcWDvRmuVSnIHX_o6m50G_Q');
                      },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22)
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 19,),
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      const SizedBox(width: 31,),
                      TextButton(
                          onPressed: () {  },
                          child: const Text('Invite Friends',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Row(
                        children: const [
                          Icon(Icons.indeterminate_check_box_rounded),
                          SizedBox(width: 15,),
                          Text('Terms & Conditions',style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TermsAndConditionPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22)
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.privacy_tip_outlined),
                          SizedBox(width: 15,),
                          Text('Privacy Policy',style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrivacyPolicyPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22)
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Row(
                        children: const [
                          Icon(Icons.rule),
                          SizedBox(width: 15,),
                          Text('Legalities',style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LegalityPage()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios,size: 22)
                      )
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
