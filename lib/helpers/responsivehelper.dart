import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const int smallScreenWidth = 852; //852
const int largeScreenWidth = 1200;

class ResponsiveHelper extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveHelper(
      {Key? key,
      this.largeScreen,this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenWidth;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= smallScreenWidth &&
      MediaQuery.of(context).size.width >= largeScreenWidth;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenWidth) {
        return largeScreen!;
      }else if(maxWidth >= smallScreenWidth && maxWidth <= largeScreenWidth){
        return mediumScreen ?? largeScreen!;
      }
      else {
        return smallScreen ?? largeScreen!;
      }
    });
  }
}
