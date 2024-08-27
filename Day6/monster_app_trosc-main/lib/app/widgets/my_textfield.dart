// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class myTextfield extends StatelessWidget {
  const myTextfield({
    Key? key,
    required this.isPassword,
  }) : super(key: key);
  String text;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFF8FE11),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        label: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF808696),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFF8FE11),
          ),
        ),
      ),
    );
  }
}
