
import 'package:exarth_app_model/Models/MenuItem.dart';
import 'package:exarth_app_model/Models/imageData.dart';
import 'package:exarth_app_model/Models/imageManu.dart';
import 'package:exarth_app_model/widgets/login/login.dart';
import 'package:exarth_app_model/widgets/profile/ProfileEnd.dart';
import 'package:exarth_app_model/widgets/profile/article.dart';
import 'package:exarth_app_model/widgets/profile/gridview.dart';
import 'package:exarth_app_model/widgets/profile/opensource.dart';
import 'package:exarth_app_model/widgets/profile/profileMid.dart';
import 'package:exarth_app_model/widgets/profile/profile_top.dart';
import 'package:exarth_app_model/widgets/profile/projects.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../Models/menu_items.dart';
import 'changePassword.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          PopupMenuButton<ImageMenu>(
            onSelected: (item){
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
            icon: Icon(MdiIcons.menu),
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
                  IconButton(
                      onPressed: () {}, icon: Icon(MdiIcons.bellOutline)),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileTop(),
                Mid(),
                ProfileEnd(),
              ]),
        ),
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
