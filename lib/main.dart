
import 'package:exarth_app_model/widgets/profile/gridview.dart';
import 'package:exarth_app_model/widgets/profile/profile.dart';
import 'package:exarth_app_model/widgets/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.redAccent,
        textTheme: const TextTheme(
          headline: TextStyle(color: Colors.white),
        ),
        
      ),
      title: "Exarth | Welcome Page",
     
      home: Profile(),
   
      
    );
  }
}
