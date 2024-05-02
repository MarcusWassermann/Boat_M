// ignore_for_file: library_private_types_in_public_api

import 'package:boat_m/registration_page/registratin_logic.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/registration_page/registration_screen_ui.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RegistrationScreenUI(
      emailController: _emailController,
      passwordController: _passwordController,
      confirmPasswordController: _confirmPasswordController,
      onRegisterPressed: () => _register(context),
    );
  }

  void _register(BuildContext context) {
    RegistrationLogic.register(
      context,
      _emailController,
      _passwordController,
      _confirmPasswordController,
    );

    // Textfelder leeren
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
  }
}
