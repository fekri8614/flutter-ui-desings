import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/menu/menu_widget.dart';

class PromosPage extends StatelessWidget {
  const PromosPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Promos Page'),
          leading: MenuWidget(),
        ),
      );
}
