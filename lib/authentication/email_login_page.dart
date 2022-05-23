import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quwinn/authentication/email_signup_page.dart';
import 'package:quwinn/pages/user_home_page.dart';
import '../models/ui_helper.dart';
import '../models/user_model.dart';

class EmailLogInPage extends StatefulWidget {
  const EmailLogInPage({Key? key}) : super(key: key);




  @override
  State<EmailLogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<EmailLogInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkValues(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if(email == '' || password == '' ){
      UIHelper.showAlertDialod(context, 'Incomplete Data', 'please fill all the field!');

    }else{
      logIn(email, password);
    }
  }
  void logIn(String email,String password) async{
    UserCredential? credetial;
    UIHelper.showLoadingDialog(context, 'Logging In...');
    try{
      credetial = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(ex){
      Navigator.pop(context);
      UIHelper.showAlertDialod(context,'An error occurred', ex.message.toString());
    }
    if(credetial!=null){
      String uid = credetial.user!.uid;
      DocumentSnapshot userData = await FirebaseFirestore.instance.
      collection('users').doc(uid).get();

      UserModel userModel = UserModel.fromMap(userData.data() as Map<String , dynamic>);
      log('Log In successful!');

      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context){
            return const UserHomePage();
          }
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.lightBlue[800],
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/quwinn_logo.png',
                      width: 150,
                      height: 200,
                      fit:BoxFit.fill
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child: Row(mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Welcome To ',style: TextStyle(color: Colors.yellowAccent,fontSize: 27),),
                        Image.asset(

                            'assets/images/logo.png',
                            width: 120,
                            height: 76,
                            fit:BoxFit.fill
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child: Row(mainAxisSize: MainAxisSize.min,
                      children:<Widget> [
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:1.0,
                            width: 106,
                            color:Colors.white38,),),
                        const Text('Log in',style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold
                        ),),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                              height:1.0,
                              width: 106,
                              color:Colors.white38),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(

                      labelText: 'Email',
                      hintText: 'enter the email',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    controller: passwordController,

                    decoration: InputDecoration(

                      labelText: 'Password',
                      hintText: 'enter the password',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                    ),
                  ),
                  const SizedBox(height: 60,),
                  CupertinoButton(
                    color: Colors.yellow[400],
                    child: const Text('Log In',style: TextStyle(color: Colors.black),),

                    onPressed: checkValues,
                  ),


                ],

              ),
            ),
          ),

        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.lightBlue[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
              style: TextStyle(
                fontSize: 16,
              ), ),
            CupertinoButton(
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return EmailSignUpPage();
                      },
                    )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


