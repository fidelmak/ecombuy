import 'package:ecombuy/const/colors.dart';
import 'package:flutter/material.dart';

import 'components/scroll_widget.dart';
import 'components/search_text.dart';

class UnloggedScreen extends StatelessWidget {
  const UnloggedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Scaffold(
        backgroundColor: textWhite,
        body: SingleChildScrollView(
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
              SizedBox(
                height: 10,
              ),
              ScrollSlider(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Categories ",
                      style: TextStyle(fontSize: 24, color: textBlack),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all ",
                      style: TextStyle(fontSize: 16, color: textBlue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
