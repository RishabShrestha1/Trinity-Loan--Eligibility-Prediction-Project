import 'package:flutter/material.dart';

class UserChoice extends StatefulWidget {
  final int value;
  final int groupValue;
  final void Function(int?) onChanged;

  const UserChoice(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  State<UserChoice> createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  @override
  Widget build(BuildContext context) {
    return Radio(
      value: widget.value,
      groupValue: widget.groupValue,
      onChanged: widget.onChanged,
      activeColor: Colors.green,
    );
  }
}
