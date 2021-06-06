import 'package:flutter/material.dart';

import 'header_drawer_widget.dart';
import 'item_drawer_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          HeaderDrawerWidget(),
          ItemDrawerWiget(
              label: 'Anúncios',
              iconData: Icons.list,
              onTap: () {},
              highlighted: true),
          ItemDrawerWiget(
              label: 'Inserir Anúncio',
              iconData: Icons.edit,
              onTap: () {},
              highlighted: false),
          ItemDrawerWiget(
              label: 'Chat',
              iconData: Icons.chat,
              onTap: () {},
              highlighted: false),
          ItemDrawerWiget(
              label: 'Favoritos',
              iconData: Icons.favorite,
              onTap: () {},
              highlighted: false),
          ItemDrawerWiget(
              label: 'Minha Conta',
              iconData: Icons.person,
              onTap: () {},
              highlighted: false),
        ],
      ),
    );
  }
}
