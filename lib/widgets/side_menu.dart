import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/constants/controllers.dart';
import 'package:web_project/constants/style.dart';
import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/routing/routes.dart';
import 'package:web_project/widgets/custom_text.dart';
import 'package:web_project/widgets/side_menuitem.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: <Widget>[
          if (Responsiveness.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text('Logo'),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 22,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
              ],
            ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: lightgrey.withOpacity(.2),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemname) => SideMenuItem(
                      itemname: itemname == AuthenticationPageRoute
                          ? "Logout"
                          : itemname,
                      onTap: () {
                        if (itemname == AuthenticationPageRoute) {
                          ////////////////////
                        }
                        if (!menuController.isActive(itemname)) {
                          menuController.changeActiveItemTo(itemname);
                          if (Responsiveness.isSmallScreen(context)) {
                            Get.back();
                          }
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
