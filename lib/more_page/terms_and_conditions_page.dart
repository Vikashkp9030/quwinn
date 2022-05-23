import 'package:flutter/material.dart';
class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15,bottom: 15),
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('               Terms and Conditions of Quwinn Application',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
              Text('''
              
Quwinn is a utility where you can find general studies based quiz game.

Quwinn has certain rules and conditions that the consumer must abide by since the application is not linked to any personal or governmental contests.

We helps to improve your skill and knowledge with reward prizes. We also encourage your curiosity, which helps you to achieve your goals easily.
'''),
              Text('Rights',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
              Text('''

Any user who uses the Quwinn or Quwinn application or the Platform’s service to engage in different quizzes is automatically accessible with the other terms, conditions and conditions provided by the Quwinn Service. And will agree to the Terms.


The Quwinn shall be entitled to revise any rules and regulations, rules, regulations and terms of use specified herein at any time by posting the same to the Quwinn.


Quwinn may also, at its sole discretion, report any change or change to these Terms and Conditions, Rules, Terms and Conditions by mailing to a subscribed email address or posting a notification to the user Accounts.


If no changes are made to the rule or the time of the rule, this change will be subject to change by the user who indicated that the terms and conditions for the Quwinn changed were not acceptable.


The app is not affiliated with any official or unofficial teams or individuals, nor does the Quwinn application support or encourage any kind of betting or gambling.


There will be some services that have additional rules, Terms and regulations for the user that must be followed.


Customers who accept the terms and conditions of the Quwinn accept communications from the Quwinn or any of its affiliates, partners and affiliates, as well as publications, announcements and administrative messages


At the time of erasure of any user’s account by default with Quwinn, the Company will pay for the facility provided by the Quwinn. But no refund will be given at the time of termination:


Violation of the terms and conditions defined by the Quwinn or improper use of the Quwinn or the Service is a fictional agent; Or


Any situation above the logical control of a Quwinn


A Quwinn can direct its sole and complete direction:


1.	Restrict, suspend, or terminate any user rest access to any or all of the Quwinn or any part of the Quwinn Platform Services.


2.	Change, suspend, or discontinue all or any part of the Quwinn Platform Services



3.	Reject, move or remove any content that may be submitted by the user;


4.	Move or remove any content available on the Agent Platform for Quwinn content



5.	Deactivate or delete the user’s account and all related information and files on the account


6.	Establish common practices and limitations regarding the use of the Quwinn platform



7.	Revising the roster of players involved in a related sports event to improve the roster of players available for selection in the competition or to add additions and / or qualifications


8.	Assign its rights and responsibilities to all user accounts to any entity below (upon notification of such assignment all users will be sent to their registered email id)


              '''),
              Text('INTELLECTUAL PROPERTY',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
              Text('''

The Quwinn fully engages a set of content developed by the Quwinn, the Contributor, Partners and Partners of the Quwinn. Software is the property of the Quwinn, including the Software, and the entertainment features are owned by the Quwinn and its partners or affiliates, and all advertising, entertainment, content, games, written content, logos, audios, videos and animations are considered the property of the Quwinn.


Any user may participate in the change, publish or transfer, retrieve and send a copy and request of the work, and may display the content of the information publicly disclosed to info@quwinn.com



Reproduction, publicly display, distribute or exploit, in any way, any content or content published on the Quwinn, or unless licensed by the Quwinn or Authorities, by the users.


'''),
              Text('Showing user content on Quwinn',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
              Text('''

Saving Users’ Content in a remote database convenient by end users, for a charge.


Allocation of users’ content by electronic or other means, in the pursuit of downloading or otherwise protecting other users, and / or


The right of the user to accept advertising such as administrative messages, announcements, and advertisements from a fictional agent or any of its partners, affiliates or licensors


Users are solely responsible for all Content (which is publicly disclosed or transmitted privately) that they may transfer, post, e-mail, transmit or otherwise receive on the Transfer Agent (the “User Content”). Each user represents and warrants that he / she owns ownership of all content that infringes the rights of any user’s content that is not part of the user’s content.


Users are solely responsible for all Content (which is publicly disclosed or transmitted privately) that they may transfer, post, e-mail, transmit or otherwise receive on the Transfer Agent (the “User Content”). Each user represents and warrants that he / she owns ownership of all content that infringes the rights of any user’s content that is not part of the user’s content. Users warrant and warrant not to show or use any third party names, logos, marks, labels, trademarks, or intellectual and proprietary rights on Quwinn. Users comply with remuneration and measure harmful quwinn , its managers, employees, affiliates and all costs, damages, losses and injuries together with measurable pricing and consulting fees, In respect of any third party claim, which will be initiated together with the infringement. The rights to the content arising from the use of such shows or the intellectual and proprietary rights of names, logos, marks, labels, trademarks, copyright or copyright rights, by such user or the commission or omission of such user.

'''),
              Text('THIRD PARTY SITES, SERVICES AND PRODUCTS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
Text('''

There is also a variety of links to substitute websites that are closely captured and operated by third parties at quwinn.com, in which users can include completely different situations for use of the location. The Quwinn Authorities may not maintain any control or liability for the Website except for Quwinn Control and as such, will not be responsible for any content suggested on any third party computer. Further, any involvement of the third party with any third-party content or links to the third-party website is not associated with any endorsement by such third-party Quwinn.


Quwinn is neither relevant nor responsible for every alternate connected activity between user and third parties with correspondence, transactions and payment suppliers and verification service suppliers in Quwinn. Users’ involvement with third parties is solely responsible for the review of those third party terms, policies and terms of service and also, the policies, terms and conditions, and the third party’s Terms of Service fully responsible for the user’s class criteria. These include a set of content created and suggested by a Quwinn, by various third parties, before transacting or leveraging on any Server. Quwinn is not responsible for the accuracy, integrity or standard of content created and implied by any third party and such content will not be relied upon by Quwinn provided by users for abuse. Participate in any contests hosted on the Platform or the Quwinn Platform.

'''),
            ],
          ),
        ),
      ),
    );
  }
}
