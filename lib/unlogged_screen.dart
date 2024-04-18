import 'package:ecombuy/const/colors.dart';
import 'package:flutter/material.dart';

import 'components/search_text.dart';

class UnloggedScreen extends StatelessWidget {
  const UnloggedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Mega Mall ",
                  style: TextStyle(color: textBlue, fontSize: 24),
                ),
                const SizedBox(
                  width: 90,
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            const SearchText(
              hint: 'Serach product name',
              obscure: false,
            ),
          ],
        ),
      ),
    );
  }
}
