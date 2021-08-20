
import 'package:exarth_app_model/buttons/button.dart';
import 'package:exarth_app_model/widgets/login/login.dart';
import 'package:exarth_app_model/widgets/signup/sign_up.dart';
import 'package:flutter/material.dart';

class EndPart extends StatelessWidget {
  double get opacity => null;

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonUse(
          onpressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  LogIn()));
          },
          text: 'LOG IN',
        ),
        SizedBox(
          height: 20,
        ),
        ButtonUse(
          onpressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  SignUp()));
          },
          text: 'Sign Up',
        ),
      ],
    );
  }
}