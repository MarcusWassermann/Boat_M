import 'package:boat_m/fith_page/main_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              child: Image.asset('assets/logo-transparent-png.png'),
            ),
            const SizedBox(height: 60.0),
            LoginFields(
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: const Text('Einloggen'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'E-Mail',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12.0),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: 'Passwort',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 12.0),
        GestureDetector(
          onTap: () {
            // Implementieren Sie die Passwortrücksetzung hier
          },
          child: const Text(
            'Passwort vergessen?',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
