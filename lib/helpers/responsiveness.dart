import 'package:flutter/material.dart';

const int largeScreenSize = 1368;
const int mediumScreenSize = 768;
const int smallScreenSize = 480;
const int customScreenSize = 1100;

class Responsiveness extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
//  final Widget customScreen;

  const Responsiveness({
    Key key,
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= largeScreenSize)
        return largeScreen;
      else if (_width >= mediumScreenSize && _width < largeScreenSize)
        return mediumScreen ?? largeScreen;
      else if (_width < mediumScreenSize)
        return smallScreen ?? largeScreen;
      else
        return largeScreen;
    });
  }
}
