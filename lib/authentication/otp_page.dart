import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quwinn/cubits/auth_cubit/auth_cubit.dart';
import 'package:quwinn/cubits/auth_cubit/auth_state.dart';
import 'package:quwinn/authentication/complete_profile_page.dart';

import 'package:quwinn/authentication/login_page.dart';



class OTPPage extends StatefulWidget {

  final String phoneNo;

  const OTPPage(this.phoneNo, {Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  TextEditingController otpController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('We Have Sent A Verification Code To',style: TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                  ),),
                  Text('+91-${widget.phoneNo}',style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  TextField(
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: InputDecoration(

                      labelText: '6-Digit OTP',
                      hintText: '000000',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  BlocConsumer<AuthCubit,AuthState>(

                    builder: (context , state){
                      if(state is AuthLoadingState){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 140,

                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),

                              onPressed: (){
                                BlocProvider.of<AuthCubit>(context).
                                verifyOTP(otpController.text);
                              },
                              child: Row(
                                children: const [
                                  Text('Resend OTP'),
                                ],
                              ),
                              color: Colors.yellow[400],

                            ),
                          ),
                          const SizedBox(width: 30,),
                          SizedBox(


                            height: 50,
                            width: 140,

                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: (){
                                BlocProvider.of<AuthCubit>(context).
                                verifyOTP(otpController.text);

                              },
                              child: const Text('Verify'),


                              color: Colors.yellow[400],

                            ),
                          ),
                        ],
                      );
                    },
                    listener: (context, state){
                      if(state is AuthLoggedInState){
                        Navigator.popUntil(context, (route) => route.isFirst);
                        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context){
                          const Duration(seconds: 10);
                          return const CompleteProfilePage();
                           },
                          ),
                        );

                      }else if(state is AuthErrorState){
                        ScaffoldMessenger.of(context).showSnackBar(

                            SnackBar(
                              backgroundColor:Colors.red,
                              content: Text(state.error),
                              duration: const Duration(microseconds: 600),
                            )
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 40,),
                  FlatButton(onPressed: ()=>const LogInPage(), child: const Text('Try other login method',style: TextStyle(color: Colors.white),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
