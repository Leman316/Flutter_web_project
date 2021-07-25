import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/constants/style.dart';
import 'package:web_project/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverviewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemname) {
    activeItem.value = itemname;
  }

  onHover(String itemname) {
    if (!isActive(itemname)) hoverItem.value = itemname;
  }

  isActive(String itemname) => activeItem.value == itemname;
  isHovering(String itemname) => hoverItem.value == itemname;

  Widget returnIconFor(String itemname) {
    switch (itemname) {
      case OverviewPageRoute:
        return _customIcon(Icons.trending_up, itemname);

      case DriversPageRoute:
        return _customIcon(Icons.drive_eta_rounded, itemname);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemname);
      case AuthenticationPageRoute:
        return _customIcon(Icons.people, itemname);

      //break;
      default:
        return _customIcon(Icons.exit_to_app, itemname);
    }
  }

  Widget _customIcon(IconData icon, String itemname) {
    if (isActive(itemname))
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    return Icon(
      icon,
      color: isHovering(itemname) ? dark : lightgrey,
    );
  }
}
