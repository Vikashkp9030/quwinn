import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String dropdownvalue = 'Bonus';

  // List of items in our dropdown menu
  var items = [
    'Bonus',
    'Leagues',
    'Point System',
    'Referral',
    'Transaction',
    'User Experience',
    'Verification and Account',
    'Withdrawal',
    'Other'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
        title: const Text('Feedback'),
      ),
      body:Container(
        color: Colors.blue[50],
        child: Column(
            children: [

              SingleChildScrollView(
                child: Container(
                  height:450,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 40,left: 23,right: 23),
                  // padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      const SizedBox(height: 35,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text('Send us your feedback',style: TextStyle(color: Colors.blue,fontSize: 14),),
                          SizedBox(height: 2,),
                          Text('Please share your suggestionor found a bug?'),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Container(
                        margin: const EdgeInsets.only(left: 15,right: 15),
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Select Feedback Category',style:TextStyle(color: Colors.grey),),
                                DropdownButton(
                                  isExpanded: true,
                                  // Initial Value
                                  value: dropdownvalue,

                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  // After selecting the desired option,it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Title',
                                  ),
                                ),
                                const TextField(
                                  decoration:InputDecoration(
                                    labelText: 'Your Message',
                                  ),
                                  minLines: 1,
                                  maxLines: 6,
                                ),

                              ]
                          ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              CupertinoButton(
                  color: Colors.blue,
                  child: const Text('SUBMIT'), onPressed: (){})

            ]
        ),
      ),
    );
  }
}
