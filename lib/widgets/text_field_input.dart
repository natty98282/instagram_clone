import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController texteditingController;
  final bool ispass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({
    super.key,
    required this.texteditingController,
    this.ispass = false,
    required this.hintText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    final inputBoarder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: texteditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBoarder,
        focusedBorder: inputBoarder,
        enabledBorder: inputBoarder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: ispass,
    );
  }
}
