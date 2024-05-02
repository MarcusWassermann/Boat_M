// ignore_for_file: library_private_types_in_public_api

import 'package:boat_m/login_page/login_screen_ui.dart.dart';
import 'package:flutter/material.dart';
import 'package:boat_m/fith_page/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login(BuildContext context) async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bitte geben Sie E-Mail und Passwort ein'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Einloggen erfolgreich: $email')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreenUI(
      emailController: _emailController,
      passwordController: _passwordController,
      onLoginPressed: () => _login(context),
    );
  }
}
