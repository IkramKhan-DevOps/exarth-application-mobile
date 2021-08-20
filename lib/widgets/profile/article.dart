import 'package:exarth_app_model/Models/MenuItem.dart';
import 'package:exarth_app_model/Models/menu_items.dart';
import 'package:exarth_app_model/widgets/profile/addArticle.dart';
import 'package:exarth_app_model/widgets/profile/profile.dart';
import 'package:exarth_app_model/widgets/profile/projects.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'opensource.dart';

class Articles extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text(
                  'ARTICLES',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddArticles()));
                    } ,
                     child:
                     Row(
                       children: [
                         Icon(Icons.add_box),
                         Text('Post an article')
                       ],
                     )),
                  ],
                ),
                Text('')
              ]),
        ),
      ),
    );
  }

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
}