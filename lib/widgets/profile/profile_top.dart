import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(height: 15),
            Text(
              'DASHBOARD',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15),
          ],
        ),
        Container(
          width: double.infinity,
          height: 180,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/dawood_pic.jpg'),
                        )),
                   
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcom To exarth developer'),
                        Text('Portal'),
                        Text('Dawood Israr'),
                        Text('MEMBER ACCOUNT'),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(MdiIcons.chartBar),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(MdiIcons.checkCircle),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(MdiIcons.xml),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      MdiIcons.information,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(MdiIcons.sourceBranch),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(MdiIcons.alphaBBox)
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
