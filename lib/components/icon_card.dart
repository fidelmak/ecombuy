import 'package:ecombuy/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class IconCard extends StatelessWidget {
  const IconCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: CarouselSlider(
            options: CarouselOptions(
              height: 100,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
            items: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: primary1.withOpacity(0.9),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.icecream_outlined)))),
                      ),
                      Text("Food")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.yellow.withOpacity(0.5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.gif_outlined)))),
                      ),
                      Text("Gift")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.purple.withOpacity(0.5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.collections_sharp)))),
                      ),
                      Text("Fashion")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.red.withOpacity(0.5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.icecream_outlined)))),
                      ),
                      Text("Gadgets")
                    ],
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
