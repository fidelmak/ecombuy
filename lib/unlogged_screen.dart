import 'export.dart';

class UnloggedScreen extends StatelessWidget {
  const UnloggedScreen({super.key});
  static String id = "unloggedScreen";

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(builder: (context, counterModel, child) {
      return Padding(
        padding: const EdgeInsets.all(24.0),
        child: Scaffold(
          floatingActionButton: CustomPopup(
            barrierColor: Colors.black.withOpacity(0.1),
            backgroundColor: Colors.white,
            content: Text(
                ' You have ${counterModel.currentCount} in your cart presently'),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
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
                            onPressed: () {
                              showPopupCard(
                                context: context,
                                builder: (context) {
                                  return PopupCard(
                                      elevation: 8,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(24.0),
                                        child: SizedBox(
                                          height: 250,
                                          width: 300,
                                          child: Center(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Make Your Payment ',
                                                      style: TextStyle(
                                                          fontSize: 20),
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
                                                Text(
                                                    ' You have ${counterModel.currentCount} in your cart'),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                SizedBox(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image(
                                                      image: AssetImage(
                                                          "images/pay.png")),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
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
                                                        "Make Payment",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
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
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 30,
                            )),
                        Text(
                          "${counterModel.currentCount}",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 30,
                        )
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
                    product_image:
                        Image(image: AssetImage("images/headset.png")),
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
                    product_image:
                        Image(image: AssetImage("images/headset.png")),
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
                    product_image:
                        Image(image: AssetImage("images/headset.png")),
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
                    product_image:
                        Image(image: AssetImage("images/headset.png")),
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
    });
  }
}
