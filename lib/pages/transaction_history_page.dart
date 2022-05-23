import 'package:flutter/material.dart';
class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {

  String dropdownvalue = 'All Transactions';

  // List of items in our dropdown menu
  var items = [
    'All Transactions',
    'Join',
    'Winning',
    'Refund',
    'Deposit',
    'Bonus',
    'Referral Earning',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.only(left: 23,right: 24,top: 52),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5),
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child:DropdownButton(
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

                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),


            ),
            const SingleChildScrollView(
              
            )
          ],
        ),
      ),
    );
  }
}
