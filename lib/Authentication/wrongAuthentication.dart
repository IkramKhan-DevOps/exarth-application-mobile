import 'package:flutter/material.dart';

class WrongAuthentication extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrong Username Or Password'),
      ),
      body: Center(
           child: Text('Sorry You Type Wrong Username Or Password!'),
      ),
    );
  }
}