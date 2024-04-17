import 'package:flutter/material.dart';

class UnloggedScreen extends StatelessWidget {
  const UnloggedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Welcome",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
