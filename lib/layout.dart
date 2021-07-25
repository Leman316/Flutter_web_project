import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/helpers/responsiveness.dart';
import 'package:web_project/widgets/large_screen.dart';
import 'package:web_project/widgets/side_menu.dart';
import 'package:web_project/widgets/small_screen.dart';
import 'package:web_project/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: Responsiveness(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
