import 'package:flutter/material.dart';
import 'package:xlo_app/app/shared/core/app_colors.dart';
import 'package:xlo_app/app/shared/core/app_typography.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Widget? customLabel;
  final Widget? icon;
  final bool iconPosLeft;
  final double? height;
  final bool isEnabled;

  const OutlinedButtonWidget(
      {Key? key,
      required this.onTap,
      required this.label,
      this.icon,
      this.isEnabled = true,
      this.iconPosLeft = false,
      this.height = 50,
      this.customLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: isEnabled ? onTap : null,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
              AppColors.secondary.withOpacity(.1)),
          backgroundColor: MaterialStateProperty.all<Color>(
              isEnabled ? Colors.transparent : Color(0xffC1C1C1)),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
                width: 1,
                color: isEnabled ? AppColors.secondary : Colors.transparent),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
        ),
        child: customLabel != null
            ? customLabel!
            : icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      iconPosLeft
                          ? Row(
                              children: [icon!, SizedBox(width: 3)],
                            )
                          : Container(),
                      Text(
                        label,
                        style: isEnabled
                            ? AppTypography.bodySemiBold
                            : AppTypography.bodySemiBold
                                .copyWith(color: Color(0xff625F5F)),
                      ),
                      !iconPosLeft ? icon! : Container(),
                    ],
                  )
                : Text(
                    label,
                    style: isEnabled
                        ? AppTypography.bodySemiBold
                        : AppTypography.bodySemiBold.copyWith(
                            color: Color(0xff625F5F),
                          ),
                  ),
      ),
    );
  }
}
