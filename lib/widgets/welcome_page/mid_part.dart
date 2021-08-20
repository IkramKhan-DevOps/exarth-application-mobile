import 'package:flutter/material.dart';

class MidPart extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Opacity(
        opacity: 0.8,
        child: ClipRRect(
          child: Image.asset("images/exarth_logo.png") ,
          borderRadius: BorderRadius.circular(10),
          
        ),
      ),
    );
    
  }
}