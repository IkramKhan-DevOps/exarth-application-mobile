import 'package:exarth_app_model/Models/MenuItem.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuData {
  static const List<MenuItem> items = [
    itemDashboard,
    itemProjects,
    itemOpen,
    itemart
  ];
  static const itemDashboard =
      MenuItem(icon: MdiIcons.viewDashboard, text: 'Dashboard');
  static const itemProjects =
      MenuItem(icon: MdiIcons.briefcase, text: 'Project');
  static const itemOpen =
      MenuItem(icon: MdiIcons.openSourceInitiative, text: 'OpenSource');
  static const itemart =
      MenuItem(icon: MdiIcons.calendarCheckOutline, text: 'Articles');
}
