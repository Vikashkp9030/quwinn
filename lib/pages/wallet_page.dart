import 'package:flutter/material.dart';
import 'package:quwinn/pages/transaction_history_page.dart';
class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Container(
        color: Colors.blue[50],
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Balance Rs. 360/-'),
                      ElevatedButton(
                          onPressed: (){}, child: const Text('Add Cash'),
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
                  ),
                  Divider(
                    thickness: 2, // thickness of the line
                    color: Colors.blue[100], // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 25,
                          backgroundColor:Colors.lightBlue[50] ,

                          child: const Icon(Icons.monetization_on_outlined,size: 30,color: Colors.black)
                      ),
                      const SizedBox(width: 31,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Amount Added',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('Rs. 10.0',style: TextStyle(fontSize: 10,color: Colors.blue),),
                        ],
                      ),

                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor:Colors.lightBlue[50] ,

                              child: const Icon(Icons.emoji_events_sharp,size: 30,color: Colors.black)
                          ),
                          const SizedBox(width: 31,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Winnings',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('Rs. 10.0',style: TextStyle(fontSize: 10,color: Colors.blue),),
                            ],
                          ),

                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          child: const Text('Withdraw'),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                  )
                              )
                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 25,
                          backgroundColor:Colors.lightBlue[50] ,

                          child: const Icon(Icons.monetization_on_outlined,size: 30,color: Colors.black)
                      ),
                      const SizedBox(width: 31,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Quwinn Cash(Bonus)',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('Rs. 10.0',style: TextStyle(fontSize: 10,color: Colors.blue),),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 22),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(left: 17,right: 17,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Icon(Icons.transfer_within_a_station),
                  const Text('My Recent Transaction'),
                  IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const TransactionHistoryPage()));
                      },
                      icon: const Icon(Icons.arrow_forward_ios)
                  )
                ],
              ),


            ),
            Container(
              padding: const EdgeInsets.only(left: 22),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(left: 17,right: 17,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Icon(Icons.transfer_within_a_station),
                  const Text('My Withdrawal History'),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.arrow_forward_ios)
                  )
                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}
