import 'package:flutter/material.dart';
import 'package:flutter_popup_card/flutter_popup_card.dart';

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
              IconButton(
                  onPressed: () {
                    showPopupCard(
                      context: context,
                      builder: (context) {
                        return PopupCard(
                            elevation: 8,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: SizedBox(
                                height: 200,
                                width: 300,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Login Account',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.cancel_outlined,
                                                color: Colors.black,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Image(
                                          image: AssetImage("images/hand.png")),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                              "Login",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ));
                      },
                      offset: const Offset(-16, 70),
                      alignment: Alignment.center,
                      useSafeArea: true,
                    );
                  },
                  icon: Icon(Icons.person_4_outlined)),
              Text('Login')
            ],
          ),
        ],
      ),
    );
  }
}
