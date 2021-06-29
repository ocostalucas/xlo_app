import 'package:xlo_app/app/shared/core/app_colors.dart';
import 'package:xlo_app/app/shared/core/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final String? label;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isRequired;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;
  final bool obscureText;
  final String? errorText;
  final String? hintText;
  final String? initialValue;
  final bool enabled;
  final TextInputType keyboardType;
  final Color textColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  const TextFieldWidget({
    Key? key,
    this.label,
    this.onChanged,
    this.isRequired = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.textColor = AppColors.text,
    this.obscureText = false,
    this.maxLength,
    this.errorText,
    this.initialValue,
    this.inputFormatters,
    this.maxLines,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label != null
              ? RichText(
                  text: TextSpan(
                    text: label,
                    style:
                        AppTypography.bodyBold.copyWith(color: AppColors.text),
                    children: [
                      isRequired
                          ? TextSpan(
                              text: '*',
                              style: AppTypography.bodyBold
                                  .copyWith(color: AppColors.red),
                            )
                          : TextSpan(),
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: EdgeInsets.only(top: label != null ? 5 : 0),
            child: Container(
              child: TextFormField(
                controller: controller,
                onChanged: onChanged,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autofocus: false,
                initialValue: initialValue,
                enabled: enabled,
                maxLines: maxLines,
                keyboardType: keyboardType,
                maxLength: maxLength,
                validator: validator,
                decoration: InputDecoration(
                  counterText: '',
                  errorText: errorText,
                  hintText: hintText,
                  prefixIcon: prefixIcon != null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [prefixIcon!],
                        )
                      : null,
                  suffixIcon: suffixIcon != null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [suffixIcon!],
                        )
                      : null,
                ),
                inputFormatters: inputFormatters,
                obscureText: obscureText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
