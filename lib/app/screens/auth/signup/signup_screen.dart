import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xlo_app/app/screens/auth/signup/signup_controller.dart';
import 'package:xlo_app/app/shared/components/buttons/button_widget.dart';
import 'package:xlo_app/app/shared/components/fields/text_field_widget.dart';
import 'package:xlo_app/app/shared/core/app_colors.dart';
import 'package:xlo_app/app/shared/core/app_typography.dart';
import 'package:xlo_app/app/shared/validators/validators.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final controller = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                SizedBox(height: 10),
                TextFieldWidget(
                  label: 'Apelido',
                  hintText: 'Exemplo: Lucas C.',
                  isRequired: true,
                  validator: (value) =>
                      Validators.validateRequiredField(value, 'Apelido'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFieldWidget(
                    label: 'E-mail',
                    hintText: 'Exemplo: lucas@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    validator: Validators.validateEmail,
                    isRequired: true,
                  ),
                ),
                TextFieldWidget(
                  isRequired: true,
                  label: 'Celular',
                  hintText: '(99) 99999-9999',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    TextInputMask(mask: ['(99) 9999-9999', '(99) 99999-9999']),
                  ],
                  validator: Validators.validatePhone,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFieldWidget(
                    label: 'Senha',
                    isRequired: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ButtonWidget(
                    onTap: () {},
                    label: 'Cadastre-se',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(color: AppColors.gray),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Já tem uma conta? ',
                    style: AppTypography.body,
                    children: [
                      TextSpan(
                        text: 'Entrar',
                        style: AppTypography.bodyBold.copyWith(
                          color: AppColors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
