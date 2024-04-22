import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              Text('Home')
            ],
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
              Text('Wishlist')
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
              Text('Order')
            ],
          ),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.person_4_outlined)),
              Text('Login')
            ],
          ),
        ],
      ),
    );
  }
}
