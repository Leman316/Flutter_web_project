import 'package:flutter/material.dart';
import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/widgets/horizontal_menu_item.dart';
import 'package:web_project/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemname;
  final Function onTap;
  const SideMenuItem({Key key, this.itemname, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsiveness.isMediumScreen(context))
      return VerticalMenuItem(
        itemName: itemname,
        onTap: onTap,
      );
    else
      return HorizontalMenuItem(
        itemname: itemname,
        onTap: onTap,
      );
  }
}
