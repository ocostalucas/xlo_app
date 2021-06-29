import 'package:flutter/material.dart';
import 'package:xlo_app/app/shared/core/app_colors.dart';
import 'package:xlo_app/app/shared/core/app_typography.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final Function() onTap;
  final Color? textColor;
  final Widget? icon;
  final bool iconPosLeft;
  final double height;
  final Color buttonColor;
  final List<BoxShadow> boxShadow;

  const ButtonWidget({
    Key? key,
    required this.onTap,
    required this.label,
    this.icon,
    this.iconPosLeft = false,
    this.buttonColor = AppColors.button,
    this.boxShadow = const [
      BoxShadow(
        color: Color.fromRGBO(253, 185, 46, 0.18),
        spreadRadius: 0,
        blurRadius: 30,
        offset: Offset(0, 4),
      ),
    ],
    this.height = 50,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
      ),
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          overlayColor: MaterialStateProperty.all<Color>(
            AppColors.primary.withOpacity(.3),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconPosLeft ? icon! : Container(),
                  Text(
                    label,
                    style: AppTypography.bodySemiBold
                        .copyWith(color: Colors.white),
                  ),
                  !iconPosLeft ? icon! : Container(),
                ],
              )
            : Text(
                label,
                style: AppTypography.bodySemiBold.copyWith(color: Colors.white),
              ),
      ),
    );
  }
}
