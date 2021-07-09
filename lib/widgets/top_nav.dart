import 'package:flutter/material.dart';
import 'package:web_project/constants/style.dart';
import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsiveness.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      "assets/icons/logo.png",
                      width: 28,
                    ))
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState.openDrawer();
              }),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        children: <Widget>[
          Visibility(
              child: CustomText(
            text: "Dash",
            color: lightgrey,
            size: 18,
            weight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              icon: Icon(Icons.settings, color: dark.withOpacity(.7)),
              onPressed: () {}),
          Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.notifications, color: dark.withOpacity(.7)),
                  onPressed: () {}),
              Positioned(
                child: Container(
                  width: 15,
                  height: 15,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: active,
                    border: Border.all(color: light, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                top: 7,
                right: 7,
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightgrey,
          ),
          SizedBox(
            width: 25,
          ),
          CustomText(
            text: "Name",
            size: 22,
            weight: FontWeight.bold,
            color: dark,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: light,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person_outline, color: dark)),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
    );
