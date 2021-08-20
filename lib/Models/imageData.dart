import 'package:exarth_app_model/Models/imageManu.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class ImageData {
  static const List<ImageMenu> items = [
    itemProfile,
    itemPassword,
    itemLogout,
    
  ];
  static const itemProfile =
      ImageMenu(icon: MdiIcons.bagPersonalOutline,text: 'Profile');
  static const itemPassword =
       ImageMenu(icon: MdiIcons.lock, text: 'Password Change');
  static const itemLogout =
       ImageMenu(icon: MdiIcons.powerSettings, text: 'Log Out');
 
}
