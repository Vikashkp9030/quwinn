import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quwinn/cubits/auth_cubit/auth_cubit.dart';
import 'package:quwinn/cubits/auth_cubit/auth_state.dart';

import 'package:quwinn/authentication/login_page.dart';
import 'package:quwinn/pages/user_home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<AuthCubit,AuthState>(
          buildWhen: (oldState , newState){
            return oldState is AuthInitialState;
          },

          builder: (context , state){
             if(state is AuthLoggedInState){
               return UserHomePage();
             }else if(state is AuthLoggedOutState){
               return LogInPage();
             }else{
               return Scaffold();
            }
          },
        ),
      ),
    );
  }
}

