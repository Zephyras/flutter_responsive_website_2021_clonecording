import 'package:flutter/material.dart';
import 'package:flutter_responsive_website_2021_clonecording/helpers/stylehelper.dart';

PreferredSizeWidget mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
          icon: const Icon(Icons.menu), color: active, onPressed: () {
          key.currentState!.openDrawer();

      }),
  backgroundColor: Colors.transparent,
  title: Image.asset('assets/images/logo.png'),
  centerTitle: true,
    elevation: 0,
    );
