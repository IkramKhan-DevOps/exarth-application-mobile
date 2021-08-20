import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Mid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget View(int ind) {
      if (ind == 0) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        );
      } else if (ind == 1) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.mobile_friendly), Text('Mobile')],
              ),
              SizedBox(
                height: 20,
              ),
              Text('counts')
            ],
          ),
        );
      } else if (ind == 2) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        );
      } else if (ind == 3) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(MdiIcons.formatFloatRight), Text('API')],
              ),
              SizedBox(
                height: 20,
              ),
              Text('counts')
            ],
          ),
        );
      } else if (ind == 4) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(MdiIcons.lan), Text('AI/AR/IOT')],
              ),
              SizedBox(
                height: 20,
              ),
              Text('counts')
            ],
          ),
        );
      } else if (ind == 5) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(MdiIcons.helpCircle), Text('Others')],
              ),
              SizedBox(
                height: 20,
              ),
              Text('counts')
            ],
          ),
        );
      }
    }

    return  Container(
      width: double.infinity,
      height: 250,
      child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(6, (index) {
            return Flexible(
              fit: FlexFit.tight,
              child: Container(
                
                  padding: EdgeInsets.all(8.0),
                  
                  child: View(index)),
            );
          }),
      ),
    );
  }
}
