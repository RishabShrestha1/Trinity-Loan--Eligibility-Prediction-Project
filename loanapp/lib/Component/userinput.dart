import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon displayIcon;
  final String? Function(String?)? customvalidator;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? prefixtext;
  const TextInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.displayIcon,
    this.customvalidator,
    required this.controller,
    this.keyboardType,
    this.prefixtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                displayIcon.icon,
                color: Colors.white,
              ),
              prefix: prefixtext != null
                  ? Text(
                      '$prefixtext   ',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  : null,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 178, 181, 224),
              // label: Text(
              //   labelText,
              //   style: const TextStyle(
              //     fontSize: 17,
              //     color: Color.fromARGB(255, 0, 0, 0),
              //   ),
              // ),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            validator: customvalidator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: keyboardType,
          ),
        ],
      ),
    );
  }
}
