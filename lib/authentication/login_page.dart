import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quwinn/cubits/auth_cubit/auth_cubit.dart';
import 'package:quwinn/cubits/auth_cubit/auth_state.dart';
import 'package:quwinn/authentication/email_login_page.dart';
import 'package:quwinn/authentication/otp_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);



  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  TextEditingController editTextController = TextEditingController();


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
                      width: 170,
                      height: 230,
                      fit:BoxFit.fill
                  ),
                  const SizedBox(height: 40,),
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
                  const SizedBox(height: 20,),
                  Center(
                    child: Row(mainAxisSize: MainAxisSize.min,
                      children:<Widget> [
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:1.0,
                            width: 70,
                            color:Colors.white38,),),
                        const Text('Log in or Sign Up',style: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.bold
                        ),),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal:10.0),
                          child:Container(
                            height:1.0,
                            width: 70,
                            color:Colors.white38),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),


              TextField(
                controller: editTextController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: 'Email/Phone Number',
                  hintText: 'Email/Phone Number',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
                  const SizedBox(height: 20,),

                  BlocConsumer<AuthCubit,AuthState>(
                    listener: (context, state){
                       if(state is AuthCodeSendState){

                         Navigator.push(
                             context,
                             CupertinoPageRoute(
                                 builder: (context){
                                  return OTPPage(editTextController.text);
                                 }
                             )
                         );
                       }
                    },
                    builder: (context,state){

                      if(state is AuthLoadingState){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return SizedBox(
                         width: MediaQuery.of(context).size.width,
                        child: CupertinoButton(
                          color: Colors.yellow[400],
                          child: const Text('CONTINUE',style: TextStyle(color: Colors.black),),

                          onPressed: (){
                            if(editTextController.text.contains('@')){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EmailLogInPage()));
                            }else{
                              String phoneNumber = '+91'+editTextController.text;
                              BlocProvider.of<AuthCubit>(context).sendOTP(phoneNumber);

                            }

                          },

                        ),
                      );
                    },

                    ),
                  const SizedBox(height: 60,),
                  const Center(child: Text('By continuing agree to our Terms of')),
                  const Center(child: Text('service Privacy Policy')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


