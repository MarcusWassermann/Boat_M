import 'package:boat_m/registration_page/registratin_logic.dart';
import 'package:boat_m/registration_page/registration_screen_ui.dart';
import 'package:flutter/material.dart';


class RegistrationScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RegistrationScreenUI(
      emailController: _emailController,
      passwordController: _passwordController,
      confirmPasswordController: _confirmPasswordController,
      onRegisterPressed: () => RegistrationScreenLogic.register(
        context,
        _emailController,
        _passwordController,
        _confirmPasswordController,
      ),
    );
  }
}
