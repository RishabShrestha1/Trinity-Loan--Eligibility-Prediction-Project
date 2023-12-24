import 'package:flutter/material.dart';

class UserChoice extends StatelessWidget {
  final int value;
  final int groupValue;
  final void Function(int?) onChanged;

  const UserChoice(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Radio(value: value, groupValue: groupValue, onChanged: onChanged);
  }
}
