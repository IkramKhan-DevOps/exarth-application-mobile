import 'package:exarth_app_model/widgets/welcome_page/welcome_page.dart';

import '../../../buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        
        child: Container(
          padding: EdgeInsets.all(10),
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 50,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage()));
                    },
                    icon: Icon(Icons.arrow_back),
                    alignment: Alignment.topLeft,
                  )),
              
              Container(
              
              child:
              
              Opacity(
                opacity: 0.8,
                child: Image.asset("images/exarth_logo.png",height: 200,
                  width: 200,),
              ),
               
              ) ,
              Text(
                "SIGN UP | AT EXARTH",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text("Your Technology Partner"),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  TextFormField(
                    obscureText: visibility,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              visibility = !visibility;
                            });
                          },
                          icon: Icon(visibility
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ButtonUse(
                    onpressed: () {},
                    text: 'SIGN UP',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have an Account?\tLog in',
                        style: TextStyle(
                          
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
