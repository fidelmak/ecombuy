import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../1aaaa/provider/counter_model.dart';

class ProductCard extends StatelessWidget {
  final Image product_image;
  final Text product_text;
  final Text button_text;

  final Text product_price;
  const ProductCard({
    Key? key,
    required this.product_image,
    required this.product_text,
    required this.button_text,
    required this.product_price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Container(
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
            child: product_image,
          ),
          SizedBox(
            height: 10,
          ),
          product_text,
          SizedBox(
            height: 10,
          ),
          Center(child: product_price),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              counter.increment();
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white), // Set text color
              overlayColor: MaterialStateProperty.all<Color>(
                  Colors.red.withOpacity(0.5)), // Set overlay color
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.red.shade100),
            ),
            child: button_text,
          )
        ],
      ),
    );
  }
}
