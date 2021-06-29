import 'package:flutter/material.dart';
import 'package:xlo_app/app/shared/core/app_colors.dart';

class ItemDrawerWiget extends StatelessWidget {
  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  const ItemDrawerWiget(
      {Key? key,
      required this.label,
      required this.iconData,
      required this.onTap,
      required this.highlighted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: highlighted ? AppColors.secondary : Colors.black54,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? AppColors.secondary : Colors.black54,
      ),
      onTap: onTap,
    );
  }
}
