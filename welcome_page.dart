import 'package:flutter/material.dart';
import 'end_part.dart';
import 'mid_part.dart';
import 'top_part.dart';

class WelcomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
            
            child: Container(
              
              child: Column(
                
                mainAxisAlignment:  MainAxisAlignment.spaceAround,
                children: [
                //Top Part
                TopPart(),
                //Mid part
                MidPart(),
                //End part
                EndPart(),
              ],),
            ),
         
        ),
      ),
    );
  }
}