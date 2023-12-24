import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controllerEntity;
  final String hintText;
  final bool obscureText;
  const InputField(
      {super.key,
      required this.controllerEntity,
      required this.hintText,
      required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controllerEntity,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 36, 168, 245)),
          ),
          fillColor: const Color.fromARGB(255, 224, 223, 223),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
