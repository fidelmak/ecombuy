import 'package:flutter/material.dart';

class LatextNews extends StatelessWidget {
  const LatextNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: const Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                "Latest News ",
                style: TextStyle(fontSize: 20),
              ),
              Text(""),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Philosophy That Addresses Topics Such As Goodness"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Agar tetap kinclong, bodi motor ten..."),
                    SizedBox(
                      height: 5,
                    ),
                    Text("13 Jan 2021")
                  ],
                ),
              ),
              Image(image: AssetImage("images/blog3.png"))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Philosophy That Addresses Topics Such As Goodness"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Agar tetap kinclong, bodi motor ten..."),
                    SizedBox(
                      height: 5,
                    ),
                    Text("13 Jan 2021")
                  ],
                ),
              ),
              Image(image: AssetImage("images/blog2.png"))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Philosophy That Addresses Topics Such As Goodness"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Agar tetap kinclong, bodi motor ten..."),
                    SizedBox(
                      height: 5,
                    ),
                    Text("13 Jan 2021")
                  ],
                ),
              ),
              Image(image: AssetImage("images/blog1.png"))
            ],
          ),
        ],
      ),
    );
  }
}
