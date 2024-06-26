import 'package:flutter/material.dart';

import '../const/colors.dart';

class MyTextButton extends StatelessWidget {
  final String hint;
  final bool obscure;

  const MyTextButton({
    super.key,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        height: 50,
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(fontSize: 18, color: textGrey),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: priColor),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary5),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: Colors.grey[50],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
