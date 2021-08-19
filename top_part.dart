import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Welcome To Exarth",
            style: 
            TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),),
          Center(
            child: Text("Your Technology Partner for Digital Innovations, Automations and Solutions",
                   style: 
              TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: Colors.black87
              ),),
          ),
            Text("Explore us",
                 style: 
            TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              
            ),)
        ],
      ),
      
    );
  }
}