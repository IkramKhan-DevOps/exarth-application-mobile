import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class ProfileEnd extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                 
                    child: Card(
                      shape: Border.all(color: Colors.blueGrey),
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Exarth Portal Guide',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hi Dawood Israr! you are using exarths members portal v1.1 here you can check your projects, statistics, articles and open source projects etc more features and functionalities will be available in future.',
                              style: TextStyle(fontStyle: FontStyle.normal),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'At the top bar card under dashboard you have no of icons each icon represents some information.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  MdiIcons.chartBar,
                                  size: 15,
                                ),
                                SizedBox(width: 2),
                                Text(' Shows no of projects assigned to you'),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Icon(MdiIcons.checkCircle, size: 15),
                                SizedBox(width: 2),
                                Text(' Shows your completed projects'),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Icon(MdiIcons.xml, size: 15),
                                SizedBox(width: 2),
                                Text('Shows your projects under development'),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Icon(MdiIcons.information, size: 15),
                                SizedBox(width: 2),
                                Text('Shows your those projects which are pending'),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Icon(MdiIcons.sourceBranch, size: 15),
                                SizedBox(width: 2),
                                Text('Shows your open source projects'),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                Icon(MdiIcons.alphaBBox, size: 15),
                                SizedBox(width: 1),
                                Text('Shows no of articles you have been posted'),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'On the second card you will be notified about your projects and their respected fields, feel free to walk around your portal and notify administration if in case any issues, problems, errors and mistakes.',
                              style: TextStyle(fontStyle: FontStyle.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  MdiIcons.alert,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  'Notice:',
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                              ],
                            ),
                            Text(
                              'There are some critical bugs that has been left to test the interaction of the team, anyone who finds those bugs will be rewarded',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Kind Regars',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Ikram Khan',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text('Chief Teachnical Officer at Exarth',
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ),
                    ),
                  
                ),
    );
  }
}