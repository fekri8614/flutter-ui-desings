import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/menu/menu_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text('Payment Page'),
          leading: MenuWidget(),
        ),
      );
}
