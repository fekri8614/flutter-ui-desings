import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/menu/menu_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Text('Notifications Page'),
          leading: MenuWidget(),
        ),
      );
}
