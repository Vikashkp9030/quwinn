import 'package:flutter/material.dart';
import 'package:quwinn/need_help_page/FAQs_page.dart';
import 'package:url_launcher/url_launcher.dart';

class NeedHelpPage extends StatefulWidget {
  const NeedHelpPage({Key? key}) : super(key: key);

  @override
  State<NeedHelpPage> createState() => _NeedHelpPageState();
}

class _NeedHelpPageState extends State<NeedHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Need Help'),
      ),
      body: Container(
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
              ),
              width: double.infinity,
              height: 87,
              margin: const EdgeInsets.only(left: 17,right: 17,top: 40),
              child: Row(
                children: [
                  const SizedBox(width: 15,),
                  CircleAvatar(
                      radius: 25,
                      backgroundColor:Colors.lightBlue[50] ,

                      child: const Icon(Icons.email,size: 30,color: Colors.black,)
                  ),
                  const SizedBox(width: 31,),
                  const Text('support@quwinn.com',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.all(5),
              width: double.infinity,
              height: 87,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(left: 17,right: 17,top: 30),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const FAQsPage()));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor:Colors.lightBlue[50] ,

                        child: const Icon(Icons.question_answer,size: 30,color: Colors.black,)
                    ),
                    const SizedBox(width: 31,),
                    const Text('FAQs',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              padding:const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(left: 15,right: 15,top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('   FOLLOW US',style: TextStyle(fontSize: 14,color: Colors.blue),),
                  TextButton(
                    onPressed:  () async{

                          await launch('https://www.facebook.com/QuwinnOfficial/');
                      },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor:Colors.lightBlue[50] ,

                            child: const Icon(Icons.facebook,size: 30,color: Colors.black)
                        ),
                        const SizedBox(width: 31,),
                        const Text('Face book',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                  TextButton(
                  onPressed:  () async{

                          await launch('https://www.instagram.com/quwinn_official/');
                      },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor:Colors.lightBlue[50] ,

                            child: const Icon(Icons.crop_square,size: 30,color: Colors.black)
                        ),
                        const SizedBox(width: 31,),
                        const Text('Instagram',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed:  () async{

                          await launch('https://twitter.com/Quwinn_Official');
                      },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor:Colors.lightBlue[50] ,

                            child: const Icon(Icons.crop_square,size: 30,color: Colors.black)
                        ),
                        const SizedBox(width: 31,),
                        const Text('Twitter',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                  TextButton(
                   onPressed:() async{

                          await launch('https://www.linkedin.com/in/quwinnquizzes');
                      },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor:Colors.lightBlue[50] ,

                            child: const Icon(Icons.link,size: 30,color: Colors.black)
                        ),
                        const SizedBox(width: 31,),
                        const Text('LinkedIn',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed:() async{
                       await launch('https://www.telegram/quwinn_official');
                      },
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor:Colors.lightBlue[50] ,

                            child: const Icon(Icons.telegram,size: 30,color: Colors.black,)
                        ),
                        const SizedBox(width: 31,),
                        const Text('Telegram',style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                      ],
                    ),
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
