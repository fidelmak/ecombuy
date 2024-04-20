import 'package:ecombuy/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScrollSlider extends StatelessWidget {
  const ScrollSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlayInterval: const Duration(seconds: 3),
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
        items: [
          Container(
            color: primary5,
            child: const Center(
                child: Image(image: AssetImage("images/image1.png"))),
          ),
          Container(
            color: primary5,
            child: Center(
                child: Image(
                    image: AssetImage(
              "images/image1.png",
            ))),
          ),
          Container(
            color: primary5,
            child: const Center(
                child: Image(image: AssetImage("images/image1.png"))),
          ),
        ],
      ),
    );
  }
}
