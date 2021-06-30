import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'signup_controller.g.dart';

class SignupController = _SignupControllerBase with _$SignupController;

abstract class _SignupControllerBase with Store {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
