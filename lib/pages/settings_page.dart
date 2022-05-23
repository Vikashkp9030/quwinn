import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        color: Colors.blue[50],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding:const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 269,
                margin: const EdgeInsets.only(left: 17,right: 17,top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          const CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.white ,

                              child: Icon(Icons.quiz_rounded,size: 30,color: Colors.black)
                          ),
                          const SizedBox(width: 31,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Quiz',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              Text('Customize your quiz preference',style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2, // thickness of the line
                      color: Colors.blue[100], // The color to use when painting the line.
                      height: 20, // The divider's height extent.
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.language,size: 30,color: Colors.black)
                          ),
                          const SizedBox(width: 31,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Language(Quiz)',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('We offer two language',style: TextStyle(fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.alarm,size: 30,color: Colors.black)
                          ),
                          const SizedBox(width: 31,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Reminder',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('Turn ON/OFF the quiz reminder ',style: TextStyle(fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.volume_up_sharp,size: 30,color: Colors.black)
                          ),
                          const SizedBox(width: 31,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Sound',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('Turn ON/OFF Quiz sound',style: TextStyle(fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.all(13),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(left: 17,right: 17,top: 30),
                child: Column(

                  children: [
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.language,size: 30,color: Colors.black)
                          ),
                          const SizedBox(width: 31,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Language(Quiz)',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('We offer two language',style: TextStyle(fontSize: 10),),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2, // thickness of the line
                      color: Colors.blue[100], // The color to use when painting the line.
                      height: 20, // The divider's height extent.
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (){}, child: const Text(' Hindi '),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: const BorderSide(color: Colors.white)
                                    )
                                )
                            )
                        ),
                        const SizedBox(width: 15,),
                        ElevatedButton(
                            onPressed: (){}, child: const Text('English'),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: const BorderSide(color: Colors.white)
                                    )
                                )
                            )
                        ),
                      ],
                    )
                  ],
                ),

              ),
              Container(
                width: double.infinity,
                height: 172,
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(left: 15,right: 15,top: 30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        onPressed: (){},
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundColor:Colors.lightBlue[50] ,

                                child: const Icon(Icons.alarm,size: 30,color: Colors.black)
                            ),
                            const SizedBox(width: 31,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Reminder',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text('Turn ON/OFF the quiz reminder ',style: TextStyle(fontSize: 10),),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2, // thickness of the line
                        color: Colors.blue[100], // The color to use when painting the line.
                        height: 20, // The divider's height extent.
                      ),
                      ListTile(
                        title: const Text('1D:1H:30M:30S'),
                        leading: Radio(groupValue: null, onChanged: (Null? value) {  }, value: null,
                        ),
                      ),
                      ListTile(
                        title: const Text('1D:1H:30M:30S'),
                        leading: Radio(groupValue: null, onChanged: (Null? value) {  }, value: null,
                        ),
                      ),
                      ListTile(
                        title: const Text('1D:1H:30M:30S'),
                        leading: Radio(groupValue: null, onChanged: (Null? value) {  }, value: null,
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
