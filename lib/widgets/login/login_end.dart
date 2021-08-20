
import 'package:exarth_app_model/widgets/profile/profile.dart';
import 'package:exarth_app_model/Authentication/wrongAuthentication.dart';
import 'package:flutter/material.dart';

class LogInEnd extends StatelessWidget {
  final username = TextEditingController();
  final password = TextEditingController();

  bool uNflag = false;
  bool uPflag = false;

  void checkUserName() {
    final enterUserName = username.text;
    if (enterUserName == 'Dawood Israr') {
      uNflag = true;
    }
  }

  void checkUserPass() {
    final enterUserPass = password.text;
    if (enterUserPass == 'Dawood Israr') {
      uPflag = true;
    }
  }

  void authorize( BuildContext contex) {
    final un = uNflag;
    final up = uPflag;
    if (un == true && up == true) {
      Navigator.push(contex, MaterialPageRoute(builder: (contex) => Profile()));
    } else {
      Navigator.push(contex,
          MaterialPageRoute(builder: (contex) => WrongAuthentication()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: '*Username'),
          controller: username,
          keyboardType: TextInputType.name,
          onSubmitted: (_) => checkUserName(),
        ),
        TextField(
          decoration: InputDecoration(labelText: '*Password'),
          controller: password,
          keyboardType: TextInputType.name,
          onSubmitted: (_) => checkUserPass(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                  foregroundColor: MaterialStateProperty.all(Colors.white30)),
              child: Text('Login'),
              onPressed: () => authorize(context),
             
            ),
            SizedBox(width: 10,),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                  foregroundColor: MaterialStateProperty.all(Colors.white30)),
              child: Text('Not regester yet?'),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text("Forgot password?\tPlease contact exarth administration.",style: TextStyle(color: Colors.black),),
      ],
    );
  }
}
