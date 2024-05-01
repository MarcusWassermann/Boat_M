import 'package:flutter/material.dart';
import 'package:boat_m/themes/background_colors.dart';

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
    final List<Color> blueShades = BackgroundColors.blueShades;
    blueShades.shuffle();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: Alignment.center,
            startAngle: 0,
            endAngle: 2 * 3.14,
            colors: blueShades,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                child: Image.asset('assets/logo-transparent-png.png'),
              ),
              const SizedBox(height: 60.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'E-Mail',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Passwort',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(color: Colors.black),
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
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: confirmPasswordController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Passwort wiederholen',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      labelStyle: TextStyle(color: Colors.black),
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
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(color: Colors.white),
            ),
          ),
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
