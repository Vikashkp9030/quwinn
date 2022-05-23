
import 'package:flutter/material.dart';

import '../styles/text_styles.dart';
class FAQsPage extends StatelessWidget {
  const FAQsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15,bottom: 15),
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('                          Topics',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.red),),
              const SizedBox(height: 25,),
              Text('      *    Quwinn Quiz',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           All about play and winnings!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),

              const SizedBox(height: 25,),
              const Text('What is Quwinn quiz?',style: ts1,),
              const Text('''
              
               
Quwinn quiz is a question and answer contest organized on Quwinn mobile application. On an everyday basis, there will be multiple contests organized on platform.


'''),
              const Text('What is Quwinn 50-50 and Audience Poll Life-lines?',style: ts1,),
              const Text('''

50-50 and Audience Poll life-lines are made for your convenience so that you can use it to win maximum prizes.

Usage:

Quiz Contest – You’ll get 50-50 (2) and Audience Poll (2) total 4 Life-lines in Quiz Contest.

 Battle Quiz – You’ll get 50-50 (1) and Audience Poll (1) total 2 Life-lines in Battle Quiz.

Quiz Anytime - You’ll get 50-50 (2) and Audience Poll (1) total 3 Life-lines in Quiz Anytime.


when you have no idea which option is correct to given question then you should use these life-lines.

50-50 will erase two wrong options and correct answer along with one wrong answer remains on your screen, while Audience Poll shows you the percentage of picking option of other users, with both life-lines you can easily find that out.


              '''),
              const Text('How many questions will be there in one round of quiz?',style: ts1,),
              const Text('''
              
There will be a total of 20 questions Quiz Contest , 10 questions in Battle Quiz and 15 questions in Quiz Anytime that will be organized on the Quwinn platform. For each correct answer, the user gets as many points as the number of seconds he saves.

For instance, in Battle Quiz , if a user answers a question correct in 3 seconds, means he saves 7 seconds because 10 second is maximum time for a question. So finally he gets 7 points for that given question.

              
              '''),
              const Text('How can I register for the Quiz Contest?',style: ts1,),
              const Text('''
              
In order to register for the quiz contest, it is mandatory that you are an Indian citizen with at least 18-yeas of age, having a Quwinn account.

In case you don’t have a Quwinn account, you can download the app from quwinn.com in any browser, and sign-up with the platform by filling out a short form.

              
              '''),
              const Text('What type of questions will be asked in the quiz?',style: ts1,),
              const Text('''
              
There will be different types of question asked during the quiz contest, and they shall differ for each category. However, the questions will be based on the general knowledge, various subjects, mental ability, sports industry and a bit of Quiz.
              
              '''),
              const Text('How do I play the Quiz on Quwinn?',style:ts1,),
              const Text('''
              
To play the quiz contest offered by Quwinn on its platform, you need to follow the below steps:

*  Download the Quwinn application and register with the platform.

*  Log-in to your Quwinn account and select the quiz league you would like to join. You can choose from different types of contests based on entry fee amount, winning amount, number of participants etc.

*  After choosing your contest, pay the pre-defined entry fee amount and start playing the quiz by answering the question shown on your mobile screens.

              
              '''),
              const Text('What will happen if I lose my Internet Connectivity mid-way?',style: ts1,),
              const Text('''
              
In an event, you lose your internet connectivity mid-way or get a call on your mobile device, the game will neither pause, nor you will be eliminated from the game. However, the timer for answering each question of the quiz shall continue to run, and you will lose the time and will not be allowed to participate in quiz further.
              
              '''),
              const Text('What will happen if I quit the app?',style: ts1,),
              const Text('''
              
In any such case, Quwinn shall not be responsible. Further, if a user for some known/ unknown reason decides to quit the application in-between or gets disconnected due to internet connectivity, then user will not be allowed to join back the ongoing contest. Their rank will be calculated based on total attempted questions up to that given point of time.
              
              '''),
              const Text('What if I exit the app during a quiz round?',style:ts1,),
              const Text('''
              
In case you exit or close the app intentionally or by mistake during a quiz round, then, you shall be eliminated from the contest, and no entry fee refunds shall be made.

In any such case, Quwinn shall not be responsible.

              
              '''),
              const Text('What will happen if I accidentally lock my phone screen during a quiz round?',style: ts1,),
              const Text('''
              
If you accidentally lock your phone while participating in a quiz contest but stay on the application, then, the game shall resume from the exact points. However, the timer shall continue to run.

In any such case, Quwinn shall not be responsible.

              
              '''),
              const Text('What will I win if I play Quwinn quiz?',style: ts1,),
              const Text('''
              
              The quiz contest on Quwinn are offered on a pay-to-play basis wherein the participants are required to pay a pre-defined amount as entry fee for joining a contest round. Any user winning the game shall win a pre-defined amount on the basis of its rank as a part of winnings.

              
              '''),
              const Text('How are the contest winners chosen?',style:ts1,),
              const Text('''
              
The winners of a contest are chosen on the basis of the number of right answers given and earned points. Any individual with the highest number of points shall be announced as the winner for the contest round.

For Instance: If a contest is carrying 10 questions and 2 users end up with same points, then it will tied.

              
              '''),
              const Text('How do I know if a contest has a single winner or more than one winner?',style:ts1,),
              const Text('''
              
              Each contest round has a pre-defined number of winners. You can know if a contest has a single winner or more than one winner by selecting the contest and clicking on the Winners option on the contest selection screen along with the winnings for each rank.
              
              '''),
              const Text('What is there is a tie between two users?',style: ts1,),
              const Text('''
              
In case there’s a tie between two users for a rank in terms of right questions answered, then the prize money for the particular rank & the immediate next rank shall be added & divided equally between the tied users.

For instance, theirs is a tie between two players for Rank 2, then the prize money for Rank 2 & Rank 3 shall be added, and divided equally between them. Meanwhile, the next winner shall get prize money for Rank 4.

              
              '''),
              const SizedBox(height: 25,),
              Text('      *    Quwinn Account',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           How to play, Register etc.',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('What is Quwinn?',style: ts1,),
              const Text('''
              
Quwinn is one of the leading online Quiz gaming platforms in India. Quwinn enables the users to earn winnings by using their skills and knowledge of online Quiz gaming.

              
              '''),
              const Text('How do I sign up?',style: ts1,),
              const Text('''
              
The users can sign up on Quwinn by filling a short registration form. However, the users can also signup directly by using their Facebook or Gmail account.

              
              '''),
              const Text('Why can’t I log in to my account?',style: ts1,),
              const Text('''
              
The users may encounter signup problems due to various reasons. The primary reasons due to which the user might not be able to signup can include the user might be entering incorrect email address or password. In case the user has forgotten his/her password, there’s a Forgot Password link available below the login option. By clicking on the Forgot Password link, the user will be taken to a new webpage, wherein the user can reset his/her password by entering his/her registered mobile number and Quwinn will send an OTP. The user can enter the OTP sent by Quwinn to reset his/her password.
              
              '''),
              const Text('Can I have multiple accounts on Quwinn?',style:ts1,),
              const Text('''
              
Strictly No. A user is allowed to have only one account under its name with valid supporting documents on Quwinn. Please refer T&Cs and Privacy Policy for further details.
              
              '''),
              const Text('Can I update/edit my information?',style: ts1,),
              const Text('''
              
The users can easily update/edit their information by logging into their Quwinn Account using their registered email address and password. After logging into their Quwinn Account the users can edit/update their information by clicking on ‘Edit Profile’ on the top right of the page. The users will be able to edit their basic information including date of birth, profile name and address but the users won’t be allowed to change their email address, mobile number or unique name once registered with Quwinn.

              
              '''),
              const Text('I’m sure I’ve got the right username and password but I still can’t log in.',style: ts1,),
              const Text('''
              
In case you are a registered and verified user of Quwinn, and are using the correct registered email address and mobile number but still can’t login into your Quwinn account, please reach out to us via the Contact Us page.
              
              '''),
              const Text('I did not get any confirmation email after I signed up.',style: ts1,),
              const Text('''
              
In case you haven’t received any confirmation email from Quwinn after registering with Quwinn there could be 2 reasons:

1.  The mail sent by Quwinn might have been marked as “Spam” and could have been sent to the spams folder of your mailbox. In such case, please check the spam folder of your mailbox and mark Quwinn as ‘Not Spam,’ additionally add Quwinn to your contacts in order to avoid any future inconvenience.
2.  The user might have mistyped his/her email address while registering with Quwinn. In such case, please reach out to us via our Contact Us page

              
              '''),
              const Text('I don’t know much about general studies – can I still play?',style:ts1,),
              const Text('''
             
The online quiz gaming services offered by Quwinn are for everyone including those who don’t know much about general knowledge. So, yes, you can play even if you don’t know much about GK. But, we force you to not play and suggest you to not waste your money and  time, because if you are not in touch with books then you could never win anything on Quwinn.
              
              '''),
              const SizedBox(height: 25,),
              Text('      *    Play on Quwinn',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           Choose contests, join etc.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),

              const SizedBox(height: 25,),
              const Text('How do I play on Quwinn?',style: ts1,),
              const Text('''
              
The users can avail the services offered by Quwinn and play contest(s) organized on Quwinn by simply registering/logging into their account. In order to play and avail the services provided, the user needs to follow these simple steps:

Register/Login to Quwinn

*   Select the quiz you want to join and then click to join a contest.

*   Join free or cash contests of your choice. Cash contests let you earn winnings and require a contest entry amount, for which we provide multiple payment methods such as Credit Cards, Debit Cards, Net banking, and different digital wallet services (Paytm, PhonePe, Google pay, etc.).

*   After the beginning of the quiz you have to start  answer the questions when quiz will start. Final points, ranks, and winners are declared after the end of the quiz.

              
              '''),
              const Text('When does Online Quiz Gaming start on Quwinn?',style: ts1,),
              const Text('''
              
Online Quiz gaming on Quwinn are divided into 3 categories: Quiz Contest, Battle Quiz & Quiz Anytime . The Quiz in Quiz Contest comes with a deadline which is usually 5-minutes prior the beginning of the Quiz. These 5 minutes are for users in which users can relax their mind and be confident to boost their morale. However, the quizzes in Battle Quiz are not time-bounded and starts right then when given no. of contestant in contest(s) are matched. Also the quizzes in Quiz Anytime are not time-bounded and starts right then when you pay a particular amount for any quiz.
              
              '''),
              const Text('How can I change my unique name?',style: ts1,),
              const Text('''
              
              Unique name will introduce you with others, There can be many users of the same name on the platform, so Quwinn assigns unique names to all the users so that there is no confusion among themselves. Don’t Worry! you can change it Once in profile section, by tapping on Edit in front of unique name. Quwinn does not allow the users to change their unique names more than one time. Here unique name is different from name.
              
              '''),
              const Text('How do I join multiple contests for the same quiz?',style: ts1,),
              const Text('''
              
In Quiz Contest, The users can join multiple contests by just choose any quiz and then select contest and join.

But in Battle Quiz user can select only one contest to compete with opponents, when it finishes user can select another (same or different) contest(s).

In Quiz Anytime user can select only one contest to play, when it will finish user can select another different contest, because played contest will remove from the list.

              
              '''),
              const Text('How many contests can I join for a single quiz?',style:ts1,),
              const Text('''
              
              In Quiz Contest, a user can join unlimited contests if there is a sufficient amount available in his Quwinn wallet when he tries to join contest.
              
              '''),

              const SizedBox(height: 25,),
              Text('      *    Marking System',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700])),
              const SizedBox(height: 14,),
              const Text('           Everything About points',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('How will I score points?',style:ts1,),
              const Text('''
         
The users are awarded scores on the basis of the answered questions in quiz. Check out our ‘Points System’ to know more about the points.
              
              '''),
              const Text('When do the points get updated?',style: ts1,),
              const Text('''
              
The final points and your rank are calculated and updated after the completion of the quiz. The declaration of winners and distribution of winnings is accomplished only after the point verification on the part of Quwinn.

              
              '''),
              const Text('I have joined contest before the deadline, so why has’t I received any points yet?',style: ts1,),
              const Text('''
              
              Points are calculated after the completion of quiz, so when the quiz is not started till then all user has ‘0’ points and #1 rank on the leaderboard. Thus, the points are awarded only after the Completion of the live quiz.
              
              '''),
              const Text('Which website do you refer to provide 100% accuracy of all the questions?',style: ts1,),
              const Text('''
              
The questions are provided on the basis of information received from our own sources. Our sources associated with Quwinn are completely reliable such as governing bodies, to correct and verify the option & ensure accurate tabulation of points. In addition, We provide options that are accepted by most researchers.

              
              '''),
              const Text('What happens when there is a tie between users? How will you distribute the winnings?',style:ts1,),
              const Text('''
              
In an event wherein there’s a tie between two or more users the winnings are distributed between the users equally.
              
              '''),

              const SizedBox(height: 25,),
              Text('      *    Contests',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           Winner, type etc',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('What type of contests can I join?',style: ts1,),
              const Text('''
              
The users using the services provided by Quwinn can join various types of contests organized by Quwinn, such as 2-member, 3-member, 5-member and 10-member contests (depending on the number of competitors in a contest). Further, the users can join cash contest(s) to earn winnings or they can join the practice contests for free to know more about playing on the platform and to enhance their playing skills.

              
              '''),
              const Text('What are public contests?',style: ts1,),
              const Text('''
              
The public contests organized by Quwinn are contests that are open to everyone. Any of the Quwinn users can join the public contest(s) organized by Quwinn and be eligible for winning the contest(s).
              
              '''),
              const Text('What are private contests?',style:ts1,),
              const Text('''
              
The private contests organized on Quwinn are contests which the user creates. In private contest a user can create his/her own contest with a pre-defined number of participants and a pre-defined winnings amount. The private contest can be shared by the user among his/her friends via a unique code. As the private contest are the contests created by the user, thus, it is not visible to all the users of Quwinn and is only accessible by the users who have the unique code for the contest.
              
              '''),
              const Text('How do I join contests?',style:ts1,),
              const Text('''
              
The users can easily join any of the contests organized by Quwinn by just clicking on the ‘Join’ button below the specific contest, the user wishes to join.
              
              '''),
              const Text('What are cash contests?',style: ts1,),
              const Text('''
              
The cash contest organized by Quwinn are contests wherein the users can participate by paying a pre-defined contest entry amount and can compete with other Quwinn users in order to earn winnings. However, the user who scores the highest aggregate of points will be declared as the winner of the contest.
              
              '''),
              const Text('How do I know if a contest has a single winner or more than one winner?',style:ts1,),
              const Text('''
              
The users can identify if a contest has a single winner or more than one winner by selecting the contest and clicking on the Winners option to view a detailed list of winners & the winnings for each rank.
              
              '''),
              const Text('How many winners will be announced for contests with multiple winners?',style: ts1,),
              const Text('''
              
The number of winners in the contest(s) organized by Quwinn varies from one contest to the other. The number of winners to be declared in a contest will be disclosed to the users as soon as the contest is made available to join.
              
              '''),
              const Text('How are the winnings distributed in case of multiple winners?',style: ts1,),
              const Text('''
              
The users can check the distribution of winnings in case of “Multiple Winners” by clicking on the pre-defined number of winners below each of the contests. In an event, the winning amount is more than ₹10,000, there will be tax deductions according to the government taxation policies. The tax deduction in case of winnings worth more than ₹10,000 is done in case of single winning of the user with a single contest in a single quiz. In case the user wins more than ₹10,000 with multiple quizzes, then no deductions will be made.
              
              '''),
              const Text('What if the contest does’t fill up with the required number of participants?',style:ts1,),
              const Text('''
              
              Quwinn offers public contests as guaranteed as well as non-guaranteed contests on the platform. The guaranteed leagues are the ones that are not cancelled even when they do not meet the pre-defined participant requirements, whereas non-guaranteed leagues can be cancel or have some changes in winning amount according to rank due to unfilled spots.
              
              '''),
              const Text('Can I join a contest in the middle of the quiz?',style: ts1,),
              const Text('''
              
Strictly no, the users can’t join a contest in the middle of a quiz. 
              
              '''),
              const Text('How do you decide the winner of a contest?',style: ts1,),



              const SizedBox(height: 25,),
              Text('      *    Cash prizes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           All about your rewards',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('How do you decide the winner of a contest?',style: ts1,),
              const Text('''
              
Quwinn updates the final ranks and points immediately at the end of every Quiz. In an event a user wins a cash prize post participating in a contest(s), the winnings amount will be credited automatically to the Quwinn account wallet of the user.
              
              '''),
              const Text('How do you decide the winner of a contest?',style: ts1,),
              const Text('''
              
Quwinn usually completes the process of winner declaration and distribution of winnings amount among the winners within few hours after the end of the quiz. Quwinn team checks to ensure that correct points have been rewarded to the users on the basis of there performance.
              
              '''),
              const Text('How do you decide the winner of a contest?',style: ts1,),
              const Text('''
              
The amount in the winnings account of the user should be withdrawn to the user’s bank account within 365 days of the transfer. In an event the user fails to withdraw his/her winnings within 365 days of credit, then the winnings amount of the user will be forfeited by Quwinn.
              
              '''),


              const SizedBox(height: 25,),
              Text('      *    Quwinn Account Balance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('              How to earn and use Quwinn Balance',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('How do I check my Quwinn account balance?',style: ts1,),
              const Text('''
              
The users can check their Quwinn account balance by clicking at the Wallet section, for a detailed account balance and most recent transactions on Quwinn

              
              '''),
              const Text('What are the ways to add amount to your Quwinn user account?',style: ts1,),
              const Text('''
              
The users can add amount to their Quwinn account by using various transaction methods such as Debit Card, Credit Card, Net banking and different digital wallet services (Paytm, PhonePe, Google pay, etc.). If the users have any query regarding adding amount to their Quwinn User Account they can reach out to us via our Contact Us page.
              
              '''),
              const Text('Is it safe to pay through your website?',style: ts1,),
              const Text('''
              
Quwinn uses verified third-party payment gateways that use various security checks in order to ensure that all the transactions on our website are completely safe and credible.
              
              '''),
              const Text('How do I get through the payment gateway?',style: ts1,),
              const Text('''
              
You don’t need to do anything special; we’ll take care of this during the payment process & ensure you have a hassle-free experience.
              
              '''),
              const Text('How do I get notification for my transaction?',style: ts1,),
              const Text('''
              
Quwinn sends you a confirmation email to your registered email address submitted at the time of registering with Quwinn along with an Order No. or a Transaction Id of your transaction.
              
              '''),
              const Text('What if the payment is deducted from my card and not updated in the Quwinn account?',style: ts1,),
              const Text('''
              
This usually happens when there is a delay in communication among the parties involved in the transaction primarily from the bank’s end. In such an event the users can reach out to us via our Contact Us page with the screenshot of their card/bank statement affirming that there has been a deduction from the user’s card so that we can check and assist the users with their concerns and queries.
              
              '''),
              const Text('How long does it take for my deposited amount to be credited into my User Account?',style: ts1,),
              const Text('''
              
The account balance of your Quwinn User Account will be updated immediately after you have made a deposit to your account. In case the balance in your Quwinn account is not updated, immediately reach out to us via our Contact Us page.
              
              '''),
              const Text('Does the amount in my ‘Unutilized’ Account have any expiry date?',style: ts1,),
              const Text('''
              
Yes, the amount deposited in your unutilized accounts come with an expiry date and should be used within 365 days of credit. In an event, the user does not use the amount deposited in their unutilized section within 365 days from the date of credit Quwinn is authorized to forfeit such unutilized amount, without any liability or obligation to pay any compensation to you.
              
              '''),
              const Text('In what order does my Account Balance get utilized towards the contest entry amount for a cash contest?',style: ts1,),
              const Text('''
              
Quwinn, first of all, deducts the amount from your Unutilized account followed by your Quwinn Cash account, and lastly from your Winnings account to cover the contest entry amount for any cash contest that you join.
              
              '''),
              const Text('What is Quwinn Cash? How can I get it?',style: ts1,),
              const Text('''
              
The Quwinn Cash offered by Quwinn can be defined as an amount awarded to the users by Quwinn under various schemes and promotions of Quwinn. In addition, the users can receive a Quwinn Cash when they join Quwinn for the first time they join the platform. The Quwinn Cash earned shall expire in 14 days from the day of receiving.
              
              '''),
              const Text('What if my transaction fails and the amount is deducted from my bank account?',style: ts1,),
              const Text('''
              
In case you are carrying out a transaction on Quwinn and your transaction fails due to certain circumstances and the amount is deducted from your bank account but is not added to your Quwinn account. In such a case please contact the payment gateway you had used for carrying out the transaction. The transaction failure amounts are to be refunded by the payment gateways as we do not receive any payments in case of transaction failure.
All your Transaction history (including but not limited to Amount Added, Winnings, League Joined, etc.) will only be available for the last 15 days. In case you’ve any query related to any of your transaction please reach our support team within 7 days of occurrence of the issue.

              
              '''),


              const SizedBox(height: 25,),
              Text('      *    Verification',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('            How to be a verified Quwinn member',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('Is verification necessary to join contests on Quwinn?',style: ts1,),
              const Text('''
              
In order to join contests on Quwinn, the users are required to verify at least their email address and mobile number. However, the user will not be eligible for the Quwinn Cash offered by Quwinn to its new users. In addition, the user shall not be allowed for any withdrawal until and unless his/her account is verified by Quwinn.
              
              '''),
              const Text('How do I get my Quwinn account verified?',style: ts1,),
              const Text('''
              
              
The account verification process of Quwinn is very simple and a one-time process. In order to verify your account manually click on your Avatar face available at the top left corner, select My Profile from the drop-down menu and then click on the “Verify” button. Verify your account by following the below-mentioned steps:

*  Enter your mobile number and then enter the OTP received on the mobile number in order to verify your mobile number.

*  Enter your email address and verify your email address by clicking the verification link sent by Quwinn. In an event you have chosen direct registration by logging in with your Facebook or Google+ your email address will be automatically verified by Quwinn.

*  The third step of verification process at Quwinn is the PAN card verification. In order to successfully verify your PAN card details, upload your PAN Card number, PAN Card image and other required details. After successfully uploading and entering the required details click on ‘Save PAN Card”.

*  After successfully submitting your PAN card details submit your bank account details for completing the verification process. PAN card and bank account details are verified on the very same day.

Note: The Name on the PAN card and the image proof uploaded as required for Bank Account verification should match with each other. In addition to this, only original image of the PAN card is acceptable, we do not accept photocopies of PAN card for verification.

              
              '''),
              const Text('Why do I need a PAN card on Quwinn?',style: ts1,),
              const Text('''
              
Quwinn is an online Quiz gaming platform that enables its users to earn winnings by using their skills and knowledge. In order to make withdrawals from your Quwinn account, it is mandatory to verify your PAN Card details with Quwinn as a proof of identity. Also, as per government rules, TDS deduction is necessary as & when required at Quwinn, therefore, we require a user’s PAN card.

In an event the user does not have a PAN Card, he/she can still play on Quwinn and the winning amounts will be deposited in the “Your Winnings” section of users’ Quwinn User Account. Further, the user can withdraw the amount by applying for a PAN card in the meantime and verifying his/her PAN card details with Quwinn.

              
              '''),
              const Text('Why did my verification fail?',style: ts1,),
              const Text('''
              
Your account verification with Quwinn can fail because of many reasons which might include:

*   You have not uploaded your PAN Card as an identity proof mandatory required for verification.

*   The PAN card number entered by you does not match with the PAN card details submitted at the time of verification request.

*   The Date of Birth entered by you at the time of creating your Quwinn account does not match with the Date of Birth mentioned on the PAN Card submitted by you.

*   Your name on the PAN card and on the bank account does not match.

*   The IFSC code you have provided is either incorrect or does not belong to the bank branch mentioned for verification.

*   The visibility or clarity factor of the documents uploaded by you is very low.

*   The bank account number on the bank account proof uploaded by you for verification purpose does not match with the Bank account number entered by you in the verification request.

In an event, if your verification request gets rejected and your verification fails you will be informed about the reason leading to verification failure which will be appearing on top of the verification page for your reference.
              
              
              '''),

              const SizedBox(height: 25,),
              Text('      *    Withdrawals',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           How to withdraw, raise a request etc',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('How do I withdraw winnings from my Quwinn account?',style: ts1,),
              const Text('''
              
The users are allowed to withdraw winnings from “My Winnings” section of their Quwinn User Account, only after they successfully complete the verification process. The users can withdraw a minimum of ₹100 and a maximum of ₹20,000 in a day wherein the user can make a request of ₹10,000 at a time. Further, the withdrawal amount will be deposited to your bank accounts within a time period of 2-3 days.
              
              '''),
              const Text('Why can’t I withdraw the Quwinn Cash available in my Quwinn User Account?',style: ts1,),
              const Text('''
              
The Quwinn Cash is an amount provided to you by Quwinn under various schemes, additionally, it comes with an expiry date. Thus, you cannot withdraw the Quwinn Cash amount available in your Quwinn User Account but you can use the bonus, provided as a part of offers or promotional schemes, to pay 10% of the contest entry amount to join contests such as Hot contests, Contests for Champions & Head-To-Head (leagues up to 99 members) and 50% of the contest entry amount for joining Mega contests with 100 or more members. However, the bonus provided as a part of Refer & Earn program can be used as:

*   A user can use a maximum of ₹50 from the ₹100 signup bonus earned, to pay contest entry amount of the first ever contest he/she is joining after registering on the app. However, it is mandatory that the particular contest should have 1000 or more members

*   Thereafter it will be used according to given details of a particular quiz contest.


Note: The bonus amount (if any) shall expire at the end of 14 days from the date of credit of the bonus amount (if any).

              
              '''),
              const Text('What bank account details do I need to provide for withdrawal/verification?',style: ts1,),
              const Text('''
              
In order to successfully complete the withdrawal process, the user needs to provide certain information as a part of identity verification. The user needs to provide the following bank account details:
 
 *  Name of the bank
 
 *  Name of the branch
 
 *  Name of the account holder
 
 *  Account Number
 
 *  IFSC code

              
              '''),


              const SizedBox(height: 25,),
              Text('      *    Legality',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           All about legacy',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('Is the paid version of Online Quiz Gaming legal in India?',style: ts1,),
              const Text('''
              
Yes, the paid version of Online Quiz Gaming Games is legal in India as it is considered to be a game of skills which is legal.

              
              '''),
              const Text('Am I allowed to play if I’m under the age of 18?',style: ts1,),
              const Text('''
              
Quwinn does not allow any individual below the age of 18 to participate or use the services provided by Quwinn.
              
              '''),
              const Text('Do I have to pay taxes when I withdraw winnings to my bank account?',style: ts1,),
              const Text('''
              
In an event, the Winning amount crosses the mark of ₹10,000, a tax of 30% is imposed on the amount which is paid off by Quwinn by deducting the tax amount from the winnings. However, the users are provided TDS certificates in accordance to the Income Tax Act 1961. In addition, the users shall be responsible for payment of any other applicable tax, including (but not limited to), income tax, gift tax, etc. in respect of their winnings.
              
              '''),


              const SizedBox(height: 25,),
              Text('      *    T&C and Privacy violation',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           What is not allowed etc.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('What are the things that are neither allowed nor appreciated by the Quwinn platform?',style: ts1,),
              const Text('''
              
*  A single user cannot create multiple accounts on Quwinn.

*  Any user misusing his/her referral code by creating different fake accounts on Quwinn in order to earn Quwinn Cash.

*  A user is not allowed to submit fake or some else’s documents.
              
              
              '''),
              const Text('What happens if a single user uses various IDs or create multiple accounts using his/her referral code in order to earn Quwinn Cash?',style: ts1,),
              const Text('''
         
In case, a user is using a single device for creating multiple accounts on Quwinn, it should be ensured by the user that all the mandatory verification formalities including mobile, email, PAN card & Bank Account details verification has been done by the user for all the accounts created. Abiding by the said process will help such users, who create multiple accounts on a single device, in terms of smooth withdrawals on Quwinn.              
              
              '''),
              const Text('What happens if someone converts or tries to convert Quwinn Cash into winnings amount by activities that violate the privacy policy of Quwinn?',style: ts1,),
              const Text('''
              
In an event any user carries out activities that violate the privacy Policies of Quwinn for converting Quwinn Cash into winnings, Quwinn shall block the user refraining him from using the services & Fun Features provided by Quwinn alongside resetting the Quwinn User Account value to “0” by deducting all the amount present in his/her Quwinn User Account.
              
              '''),


              const SizedBox(height: 25,),
              Text('      *    Payment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.lightBlue[700]),),
              const SizedBox(height: 14,),
              const Text('           Payment and much more',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
              const SizedBox(height: 25,),
              const Text('How to add a credit/debit card to my Quwinn account?',style: ts1,),
              const Text('''
             
 You can add a credit/debit card to your Quwinn account by following a few simple steps. Click on ‘Add Cash’ tab, enter the amount you wish to add and select your payment gateway, select a card and enter your card details. Click on ‘Save & Proceed.’

              
              '''),
              const Text('Is it safe to enter my card details? Does Quwinn save any of it?',style: ts1,),
              const Text('''
              
Quwinn uses secure and credible third-party payment gateways for transactions that use 3D secure authentication which ensures that it is safe to share your card details with Quwinn. In addition, Quwinn does not store any of your card information, including your CVV number.
              
              
              '''),
              const Text('Can I add multiple credit/debit cards to My Account?',style: ts1,),
              const Text('''
              
Yes, you can add numerous credit/debit cards to your account until and unless they have not expired.
              
              '''),
              const Text('What type of cards can be saved/used?',style: ts1,),
              const Text('''
              
You can use all major types of credit/debit cards including Visa, MasterCard, Maestro, etc.
              
              '''),
              const SizedBox(height: 25,),
              const Text('                        Can’t find what you looking for',style: TextStyle(color: Colors.red),),
              const SizedBox(height: 25,),
              const Text('                     Contact Us',style: TextStyle(color: Colors.greenAccent,fontSize: 24))


            ]
          ),
        ),
      ),
    );
  }
}
