import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class ProfileMid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Card(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.web), Text('Web')],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('counts')
                          ],
                        ))),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Card(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.mobile_friendly),
                                Text('Mobile')
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('counts')
                          ],
                        ))),
                    Container(
                       padding: EdgeInsets.all(10),
                        child: Card(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.desktop_windows_outlined),
                                Text('Desktop')
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('counts')
                          ],
                        ))),
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                           
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(MdiIcons.formatFloatRight),
                                    Text('API')
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('counts')
                              ],
                            ))),
                        Container(
                            
                            child: Card(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(MdiIcons.lan),
                                    Text('AI/AR/IOT')
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('counts')
                              ],
                            ))),
                        Container(
                            
                            child: Card(
                                child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(MdiIcons.helpCircle),
                                      Text('Others')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('counts')
                                ],
                              ),
                            ))),
                      ]),
      ],),
    );
  }
}