import 'package:boat_m/contact_form_page/contact_form.dart';
import 'package:flutter/material.dart';


class ContactFormScreen extends StatelessWidget {
  const ContactFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ContactForm(),
          ],
        ),
      ),
    );
  }
}
