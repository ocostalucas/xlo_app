import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:xlo_app/app/screens/navigation/navigation_controller.dart';

import 'header_drawer_widget.dart';
import 'item_drawer_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  CustomDrawerWidget({Key? key}) : super(key: key);

  final NavigatorController navigatorController =
      GetIt.I<NavigatorController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          HeaderDrawerWidget(),
          ItemDrawerWiget(
            label: 'Anúncios',
            iconData: Icons.list,
            onTap: () => navigatorController.setCurrentPage(0),
            highlighted: navigatorController.currentPage == 0,
          ),
          ItemDrawerWiget(
            label: 'Inserir Anúncio',
            iconData: Icons.edit,
            onTap: () => navigatorController.setCurrentPage(1),
            highlighted: navigatorController.currentPage == 1,
          ),
          ItemDrawerWiget(
            label: 'Chat',
            iconData: Icons.chat,
            onTap: () => navigatorController.setCurrentPage(2),
            highlighted: navigatorController.currentPage == 2,
          ),
          ItemDrawerWiget(
            label: 'Favoritos',
            iconData: Icons.favorite,
            onTap: () => navigatorController.setCurrentPage(3),
            highlighted: navigatorController.currentPage == 3,
          ),
          ItemDrawerWiget(
            label: 'Minha Conta',
            iconData: Icons.person,
            onTap: () => navigatorController.setCurrentPage(4),
            highlighted: navigatorController.currentPage == 4,
          ),
        ],
      ),
    );
  }
}
