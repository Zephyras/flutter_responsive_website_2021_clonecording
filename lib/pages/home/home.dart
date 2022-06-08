import 'package:flutter/material.dart';
import 'package:flutter_responsive_website_2021_clonecording/helpers/responsivehelper.dart';
import 'package:flutter_responsive_website_2021_clonecording/helpers/stylehelper.dart';
import 'package:flutter_responsive_website_2021_clonecording/pages/widgets/desktop.dart';
import 'package:flutter_responsive_website_2021_clonecording/pages/widgets/mobiles.dart';
import 'package:flutter_responsive_website_2021_clonecording/widgets/drawer.dart';
import 'package:flutter_responsive_website_2021_clonecording/widgets/navbar_desktop.dart';
import 'package:flutter_responsive_website_2021_clonecording/widgets/navbar_mobile.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> ScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: ScaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveHelper.isSmallScreen(context)
          ? mobileNavBar(ScaffoldKey)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: const NavBar(),
            ),
      drawer: const SideMenu(),
      backgroundColor: bgColor,
      body: const ResponsiveHelper(largeScreen: DesktopScreen(),smallScreen: MobilesScreen()),
    );
      }
}
