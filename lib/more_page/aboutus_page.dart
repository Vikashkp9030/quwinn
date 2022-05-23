import 'package:flutter/material.dart';
class AboutUS extends StatelessWidget {
  const AboutUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15,bottom: 15),
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('WHO ARE WE?',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('''
              
A group of people who are crazy about education & wish to offer the best online quiz gaming experience to education champs.
                                     
                                     
                                        Logo


About us

Quwinn is known to be the first-largest market leader & the most trusted edu quiz brand across India. Launched in 2022, with dual languages, Quiz contests and exciting winnings, we have it all.



Mr. Gajendra Singh
CEO and Co-Founder
A graduate, Mr. Gajendra Singh always had a thing for education. Being an efficient scholar his entire life, he opted for clubbing his love for education & the zeal of being successful in his career. With a little exposure to the online quiz and immense affection for education, he teamed up with Mr. Ravindra to give the world Quwinn, a present leading quiz platform.



Mr. Ravindra

COO and Co-Founder

Coming from a family of farmer, Mr. Ravindra, held the courage to break the family stereotype & go for pursuing his passion as his career choice. Being recognized as the founding member of Quwinn is what gave him excitement that private-sector jobs lacked. He teamed up with Mr. Me to give the world Quwinn, a present leading quiz platform.


Still looking for reasons to join us?

We can claim plenty of reasons to join us, but only you can judge the authenticity of our claims. Join Quwinn and make your first step towards a successful journey that we both will share.


   [Start Playing now]  -> button to go homepage

              ''',style: TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
