import 'package:aqualyze/constants/style.dart';
import 'package:aqualyze/widgets/menu_drawer_item.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MenuDrawerItem(text: 'Perfil', icon: Icons.person_search, onTap: () {}),
        SizedBox(height: 20),
        MenuDrawerItem(text: 'Config', icon: Icons.settings, onTap: () {}),
        SizedBox(height: 20),
        MenuDrawerItem(text: 'Logout', icon: Icons.logout, onTap: () {}),
      ],
    );
  }
}
