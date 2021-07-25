import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/constants/controllers.dart';
import 'package:web_project/constants/style.dart';
import 'package:web_project/controllers/menuController.dart';
import 'package:web_project/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemname;
  final Function onTap;
  const HorizontalMenuItem({Key key, this.itemname, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemname)
            : menuController.onHover('not Hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemname)
                ? lightgrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: <Widget>[
                Visibility(
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                  visible: menuController.isHovering(itemname) ||
                      menuController.isActive(itemname),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                SizedBox(
                  width: _width / 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemname),
                ),
                if (!menuController.isActive(itemname))
                  Flexible(
                      child: CustomText(
                    text: itemname,
                    color:
                        menuController.isHovering(itemname) ? dark : lightgrey,
                  ))
                else
                  Flexible(
                      child: CustomText(
                    text: itemname,
                    color: dark,
                    size: 18,
                    weight: FontWeight.bold,
                  ))
              ],
            ),
          )),
    );
  }
}
