import 'package:ecombuy/const/colors.dart';
import 'package:flutter/material.dart';

import '../components/category.dart';
import '../components/search_text.dart';
import '../components/text_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static String id = "signIn";

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textWhite,
      appBar: AppBar(
        backgroundColor: textWhite,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome back to \nMega Mall ",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "To continue with your shopping, you need to login  ",
              style: TextStyle(fontSize: 16, color: textGrey),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Email/Phone ",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            const MyTextButton(
              hint: 'for example Ben Paul / 909-333-3344',
              obscure: false,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Password ",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            const MyTextButton(
              hint: 'Mypassword123@',
              obscure: true,
            ),
            SizedBox(
              height: 50,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: Container(
                width: 380,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: textBlue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
