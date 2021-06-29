import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xlo_app/app/shared/components/buttons/button_widget.dart';
import 'package:xlo_app/app/shared/components/buttons/outlined_button_widget.dart';
import 'package:xlo_app/app/shared/components/fields/text_field_widget.dart';
import 'package:xlo_app/app/shared/core/app_colors.dart';
import 'package:xlo_app/app/shared/core/app_typography.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Divider(color: AppColors.gray),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "ou",
                      style: AppTypography.body.copyWith(color: AppColors.gray),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: AppColors.gray),
                  ),
                ]),
              ),
              TextFieldWidget(
                label: 'E-mail',
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Senha',
                    style:
                        AppTypography.bodyBold.copyWith(color: AppColors.text),
                  ),
                  Text(
                    'Esqueceu sua senha?',
                    style:
                        AppTypography.bodyBold.copyWith(color: AppColors.blue),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: TextFieldWidget(),
              ),
              ButtonWidget(onTap: () {}, label: 'Entrar'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Divider(color: AppColors.gray),
              ),
              RichText(
                text: TextSpan(
                  text: 'Não tem uma conta? ',
                  style: AppTypography.body,
                  children: [
                    TextSpan(
                      text: 'Cadastre-se',
                      style: AppTypography.bodyBold.copyWith(
                        color: AppColors.blue,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
