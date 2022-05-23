import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quwinn/authentication/email_login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/ui_helper.dart';
import '../models/user_model.dart';
import 'complete_profile_page.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({Key? key}) : super(key: key);



  @override
  State<EmailSignUpPage> createState() => _EmailSignUpPage();
}

class _EmailSignUpPage extends State<EmailSignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void checkValue(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cPasswordController.text.trim();
    if(email == '' || password=='' || cPassword==''){
      UIHelper.showAlertDialod(context, 'Incomplete Data', 'please fills all the fields!');
    }else if(password!=cPassword){
      UIHelper.showAlertDialod(context, 'Password Mismatch', 'Passwords do not match!');
    }else{
      signUp(email, password);
    }
  }

  void signUp(String email, String password) async{
    UserCredential? credential;
    UIHelper.showLoadingDialog(context, 'Create a new account');
    try{
      credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(ex){
      Navigator.pop(context);
      UIHelper.showAlertDialod(context, 'An error accrued', ex.code.toString());
    }
    if(credential!=null){
      String uid = credential.user!.uid;
      UserModel newUser = UserModel(
        uid: uid,
        email: email,
        fullname: '',
        profilepic: '',
        phoneNumber:'',
        dateOfBirth: '',
        gender: '',
        address: '',
        state: '',
      );
      await FirebaseFirestore
          .instance.collection('users').doc(uid).set(newUser.toMap())
          .then((value){

        log('new users created!');
       Navigator.popUntil(context, (route) => route.isFirst);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context){
              return const CompleteProfilePage();

            }));
      });
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
                            width: 101,
                            color:Colors.white38,),),
                        const Text('Sign Up',style: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.bold
                        ),),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                              height:1.0,
                              width: 101,
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
                  const SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    controller: cPasswordController,

                    decoration: InputDecoration(

                      labelText: 'Confirm Password',
                      hintText: 'enter the confirm password',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                    ),
                  ),
                  const SizedBox(height: 60,),
                  CupertinoButton(
                    onPressed: checkValue,
                    color: Colors.yellow[400],
                    child: const Text('Sign Up',style: TextStyle(color: Colors.black),),
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
                'Log In',
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
                        return const EmailLogInPage();
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


