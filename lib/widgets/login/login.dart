import 'login_end.dart';
import 'login_mid.dart';
import 'login_top.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogIn extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).primaryColor,
      body:SingleChildScrollView(
        child: SafeArea(
            child: Container(
             
              
              child: Column(
                mainAxisAlignment:  MainAxisAlignment.start,
                children: [
            LogInTop(),
            LogInMid(),
            LogInEnd(),
            ]
          ),
        )),
      ) 
      //Mid Part
      //Lmid(),
      //End
      //Lend(),
    );
  }
}