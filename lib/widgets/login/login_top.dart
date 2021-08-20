import 'package:exarth_app_model/widgets/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

class LogInTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              
              width: 50,
              child:
              IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => WelcomePage()));
              }, icon: Icon(Icons.arrow_back),alignment: Alignment.topLeft,)
            ),
            Container(
              
              child:
              
              Opacity(
                opacity: 0.8,
                child: Image.asset("images/exarth_logo.png",height: 200,
                  width: 200,),
              ),
               
              ) ,
            
          ],
        ) 
        
        
      )
      
    );
  }
}