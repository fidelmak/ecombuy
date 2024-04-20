import 'package:flutter/material.dart';

import '../const/colors.dart';
import 'banner.dart';
import 'category.dart';
import 'product_card.dart';

class Products extends StatelessWidget {
  final CategoryFeatures features;
  final ProductCard card1;
  final ProductCard card2;
  final BannerScroll bannerScroll;
  const Products({
    Key? key,
    required this.features,
    required this.card1,
    required this.card2,
    required this.bannerScroll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: textGrey.withOpacity(0.09),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          features,
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              card1,
              SizedBox(
                width: 20,
              ),
              card2,
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          bannerScroll,
        ],
      ),
    );
  }
}
