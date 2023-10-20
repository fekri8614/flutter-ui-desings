import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/components/zoom_drawer_demo/menu/menu_item.dart';

class MenuItems {
  static const payment = MenuItem('Payment', Icons.payment);
  static const promos = MenuItem('Promos', Icons.card_giftcard);
  static const notifications = MenuItem('Notifications', Icons.notifications);
  static const help = MenuItem('Help', Icons.help);
  static const aboutUs = MenuItem('About Us', Icons.info_outline);
  static const rateUs = MenuItem('Rate Us', Icons.star_border);

  static const all = [
    payment,
    promos,
    notifications,
    help,
    aboutUs,
    rateUs,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuPage({
    super.key,
    required this.currentItem,
    required this.onSelectedItem,
  });

  @override
  Widget build(BuildContext context) => Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          backgroundColor: Colors.indigo,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                ...MenuItems.all.map((item) => buildMenuItem(item)).toList(),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItem(MenuItem item) => ListTile(
        selectedTileColor: Colors.black26,
        selectedColor: Colors.white,
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () => onSelectedItem(item),
      );
}
