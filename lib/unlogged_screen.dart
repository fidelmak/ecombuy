import 'package:ecombuy/const/colors.dart';
import 'package:flutter/material.dart';

import 'components/banner.dart';
import 'components/bottom_nav.dart';
import 'components/category.dart';
import 'components/icon_card.dart';
import 'components/latext_news.dart';
import 'components/product_card.dart';
import 'components/products.dart';
import 'components/scroll_widget.dart';
import 'components/search_text.dart';
import 'package:flutter_popup/flutter_popup.dart';

class UnloggedScreen extends StatelessWidget {
  const UnloggedScreen({super.key});
  static String id = "unloggedScreen";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Scaffold(
        floatingActionButton: CustomPopup(
          barrierColor: Colors.black.withOpacity(0.1),
          backgroundColor: Colors.white,
          content: Text('Hey! fella , shop your \n favourites'),
          child: Icon(Icons.message_outlined, color: Colors.grey),
        ),
        bottomNavigationBar: BottomNav(),
        backgroundColor: textWhite,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: null,
                  ),
                  Container(
                    child: null,
                  ),
                  Text(
                    "Mega Mall ",
                    style: TextStyle(color: textBlue, fontSize: 24),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                          )),
                      SizedBox(
                        width: 1,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              const SearchText(
                hint: 'Search product name',
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
                height: 10,
              ),
              IconCard(),
              SizedBox(
                height: 30,
              ),
              Products(
                features: CategoryFeatures(
                  categoryText1: Text(
                    " Featured Products ",
                    style: TextStyle(fontSize: 20, color: textBlack),
                  ),
                  categoryText2: Text(
                    "see all ",
                    style: TextStyle(fontSize: 16, color: textBlue),
                  ),
                  categoryFunction1: () {},
                  categoryFunction2: () {},
                ),
                card1: ProductCard(
                  product_image:
                      Image(image: AssetImage("images/earpiece.png")),
                  product_text: Text("Wireless Earpiece "),
                  button_text: Text("Add"),
                  product_price: Text("USD 2000.00"),
                ),
                card2: ProductCard(
                  product_image: Image(image: AssetImage("images/headset.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                bannerScroll: const BannerScroll(
                    banner_image: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "images/Banner1.png",
                        ))),
              ),
              Products(
                features: CategoryFeatures(
                  categoryText1: Text(
                    " Best Sellers ",
                    style: TextStyle(fontSize: 20, color: textBlack),
                  ),
                  categoryText2: Text(
                    "see all ",
                    style: TextStyle(fontSize: 16, color: textBlue),
                  ),
                  categoryFunction1: () {},
                  categoryFunction2: () {},
                ),
                card1: ProductCard(
                  product_image: Image(image: AssetImage("images/headset.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                card2: ProductCard(
                  product_image: Image(image: AssetImage("images/drill.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                bannerScroll: const BannerScroll(
                    banner_image: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "images/banner2.png",
                        ))),
              ),
              Products(
                features: CategoryFeatures(
                  categoryText1: Text(
                    "Top Rated  ",
                    style: TextStyle(fontSize: 20, color: textBlack),
                  ),
                  categoryText2: Text(
                    "see all ",
                    style: TextStyle(fontSize: 16, color: textBlue),
                  ),
                  categoryFunction1: () {},
                  categoryFunction2: () {},
                ),
                card1: ProductCard(
                  product_image: Image(image: AssetImage("images/headset.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                card2: ProductCard(
                  product_image: Image(image: AssetImage("images/drill.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                bannerScroll: const BannerScroll(
                    banner_image: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "images/Banner1.png",
                        ))),
              ),
              Products(
                features: CategoryFeatures(
                  categoryText1: Text(
                    " New Arrivals  ",
                    style: TextStyle(fontSize: 20, color: textBlack),
                  ),
                  categoryText2: Text(
                    "see all ",
                    style: TextStyle(fontSize: 16, color: textBlue),
                  ),
                  categoryFunction1: () {},
                  categoryFunction2: () {},
                ),
                card1: const ProductCard(
                  product_image: Image(image: AssetImage("images/headset.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                card2: const ProductCard(
                  product_image: Image(image: AssetImage("images/drill.png")),
                  product_text: Text("Wireless Headset"),
                  button_text: Text("Add"),
                  product_price: Text("USD 5000.00"),
                ),
                bannerScroll: const BannerScroll(
                    banner_image: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "images/banner2.png",
                        ))),
              ),
              LatextNews(),
            ],
          ),
        ),
      ),
    );
  }
}
