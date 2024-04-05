import 'package:boat_m/postad_page/postad_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreenUI extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final void Function() onRegisterPressed;

  const RegistrationScreenUI({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.onRegisterPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PostAdScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80, // Höhe des Logos anpassen
                child: Image.asset('assets/logo-transparent-png.png'),
              ),
              const SizedBox(height: 60.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'E-Mail',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Passwort',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Passwort wiederholen',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: onRegisterPressed,
                child: const Text('Registrieren'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
