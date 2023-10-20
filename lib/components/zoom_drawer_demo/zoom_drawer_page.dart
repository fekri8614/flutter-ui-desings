/// Resource: https://www.youtube.com/watch?v=Evu19gTKaFo

import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/about/about_us.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/help/help_page.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/menu/menu_item.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/menu/menu_page.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/notification/notification_page.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/payment_screen.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/promos/promos_page.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/rate_us/rate_us.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZoomDrawerHomePage extends StatefulWidget {
  const ZoomDrawerHomePage({super.key});

  @override
  State<ZoomDrawerHomePage> createState() => _ZoomDrawerHomePageState();
}

class _ZoomDrawerHomePageState extends State<ZoomDrawerHomePage> {
  MenuItem currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        borderRadius: 40,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width * .8,
        style: DrawerStyle.defaultStyle,
        mainScreen: getScreen(),
        showShadow: true,
        menuBackgroundColor: Colors.grey.shade300,
        menuScreen: Builder(
          builder: (context) => MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            },
          ),
        ),
      );

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return PaymentScreen();
      case MenuItems.promos:
        return PromosPage();
      case MenuItems.notifications:
        return NotificationPage();
      case MenuItems.help:
        return HelpPage();
      case MenuItems.aboutUs:
        return AboutUsPage();
      case MenuItems.rateUs:
      default:
        return RateUsPage();
    }
  }
}
