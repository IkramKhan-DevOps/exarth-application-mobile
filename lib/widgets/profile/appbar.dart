import 'package:exarth_app_model/Models/MenuItem.dart';
import 'package:exarth_app_model/Models/imageData.dart';
import 'package:exarth_app_model/Models/imageManu.dart';
import 'package:exarth_app_model/Models/menu_items.dart';
import 'package:exarth_app_model/widgets/login/login.dart';
import 'package:exarth_app_model/widgets/profile/profile.dart';
import 'package:exarth_app_model/widgets/profile/projects.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'article.dart';
import 'changePassword.dart';
import 'opensource.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          PopupMenuButton<ImageMenu>(
              onSelected: (item) {
                imageWidget(item, context);
              },
              icon: Container(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/dawood_pic.jpg'),
                  ),
                ),
              ),
              itemBuilder: (context) => [
                    ...ImageData.items.map(itt).toList(),
                  ]),
          PopupMenuButton<MenuItem>(
              onSelected: (item) => openWidget(item, context),
              itemBuilder: (context) => [
                    ...MenuData.items.map(it).toList(),
                  ])
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                      child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/dawood_pic.jpg'),
                  )),
                  IconButton(
                      onPressed: () {}, icon: Icon(MdiIcons.bellOutline)),
                ],
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text('hello'),
      ),
    );
  }

  PopupMenuItem<ImageMenu> itt(ImageMenu item) => PopupMenuItem<ImageMenu>(
      value: item,
      child: Row(
        children: [
          Icon(
            item.icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(item.text),
        ],
      ));
  PopupMenuItem<MenuItem> it(MenuItem item) => PopupMenuItem<MenuItem>(
      value: item,
      child: Row(
        children: [
          Icon(
            item.icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(item.text),
        ],
      ));
  void openWidget(MenuItem item, BuildContext context) {
    switch (item) {
      case MenuData.itemDashboard:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));
        break;
      case MenuData.itemProjects:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Projects()));
        break;
      case MenuData.itemOpen:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OpenSource()));
        break;
      case MenuData.itemart:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Articles()));
        break;
    }
  }

  void imageWidget(ImageMenu item, BuildContext context) {
    switch (item) {
      case ImageData.itemProfile:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));
        break;
      case ImageData.itemPassword:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChangePassword()));
        break;
      case ImageData.itemLogout:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogIn()));
        break;
    }
  }
}
