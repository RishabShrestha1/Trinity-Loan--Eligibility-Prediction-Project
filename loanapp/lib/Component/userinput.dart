import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon displayIcon;
  final String? Function(String?)? customvalidator;
  final TextEditingController controller;

  const TextInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.displayIcon,
    this.customvalidator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            displayIcon.icon,
            color: Colors.white,
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 98, 196, 111),
          label: Text(
            labelText,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        validator: customvalidator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
      ),
    );
  }
}
