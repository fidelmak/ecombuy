import 'package:flutter/material.dart';

import '../const/colors.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: textGrey.withOpacity(0.09),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  " Featured Products ",
                  style: TextStyle(fontSize: 20, color: textBlack),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "see all ",
                  style: TextStyle(fontSize: 16, color: textBlue),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                height: 300,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(image: AssetImage("images/earpiece.png")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Wireless Earpiece "),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Text("USD 2000.00")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Set text color
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.red.withOpacity(0.5)), // Set overlay color
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red.shade100),
                      ),
                      child: Text("Add"),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                height: 300,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(image: AssetImage("images/headset.png")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Wireless Headset"),
                    SizedBox(
                      height: 10,
                    ),
                    Center(child: Text(" USD 5000.00")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Set text color
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.red.withOpacity(0.5)), // Set overlay color
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red.shade100),
                      ),
                      child: Text("Add"),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
