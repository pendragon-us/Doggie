import 'package:flutter/material.dart';

class LoginTextFieldCard extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;

  const LoginTextFieldCard({super.key, required this.hintText, required this.icon, required this.obscureText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          icon: Icon(icon),
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
