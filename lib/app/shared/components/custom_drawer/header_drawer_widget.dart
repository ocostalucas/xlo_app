import 'package:flutter/material.dart';
import 'package:xlo_app/app/core/app_colors.dart';
import 'package:xlo_app/app/core/app_typography.dart';

class HeaderDrawerWidget extends StatelessWidget {
  const HeaderDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 110,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.person,
            size: 35,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Acesse sua conta agora!',
                  style:
                      AppTypography.titleSemiBold.copyWith(color: Colors.white),
                ),
                SizedBox(height: 5),
                Text('Clique aqui',
                    style: AppTypography.body.copyWith(color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
