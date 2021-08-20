import 'package:flutter/material.dart';

class ButtonUse extends StatefulWidget {
  final void Function () onpressed;
  final String text;
   ButtonUse({@required this.onpressed,@required this.text});

  @override
  _ButtonUseState createState() => _ButtonUseState();
}

class _ButtonUseState extends State<ButtonUse> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
          onPressed: widget.onpressed,
          height: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(5),
            child: Ink(
              decoration: BoxDecoration(
               color: Colors.black54,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                height: 50,
                alignment: Alignment.center,
                child: Text(widget.text ,
                style:
                TextStyle(
                  color: Colors.white38,
                  fontStyle: FontStyle.italic
                )
                ),
                ),
            ),
        );
  }
}