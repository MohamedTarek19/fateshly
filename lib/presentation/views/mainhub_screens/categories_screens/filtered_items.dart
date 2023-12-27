import 'dart:ui';

import 'package:fateshny/presentation/views/mainhub_screens/categories_screens/item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilteredItems extends StatelessWidget {
  FilteredItems({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title, style: TextStyle(fontFamily: 'lama', fontWeight: FontWeight.bold, fontSize: 25)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 55,
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: const Color(0xffEBEBEB), border: Border.all(color: const Color(0xffEBEBEB))),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 20,
                              child: SvgPicture.asset(
                                'assets/images/search.svg',
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 9,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'ما الذي تبحث عنه؟',
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                LayoutGrid(
                  columnSizes: [1.fr, 1.fr],
                  columnGap: -5,
                  rowSizes: const [auto, auto, auto],
                  rowGap: 15,
                  children: [
                    for (var i = 0; i < 5; i++)
                      InkWell(
                        child: CartItem(
                          productImage: 'assets/images/coffee.jpg',
                          title: 'قهوة',
                          price: '12',
                          rate: "4.8",
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ProductDetailsScreen(Category: title,);
                          },));
                        },
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  CartItem({
    super.key,
    required this.productImage,
    required this.price,
    required this.rate,
    required this.title,
  });

  String productImage;
  String title;
  String rate;
  String price;

  final RegExp arabic = RegExp(r'^[\u0621-\u064A]+');

  @override
  Widget build(BuildContext context) {
    // if(!(productImage.contains('https://') && productImage.contains('https://')) ){
    //   productImage = 'http://'+productImage;
    // }
    // print(productImage);
    return Directionality(
      textDirection: arabic.hasMatch(title) ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.44,
            margin: const EdgeInsets.only(
              left: 4,
              right: 4,
              top: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Container(
                        //margin: const EdgeInsets.only(left: 4,right: 4,top: 4,),
                        height: MediaQuery.of(context).orientation == Orientation.portrait ? 130 : 115,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                // image:NetworkImage(productImage),
                                // fit: BoxFit.fill,
                                image: AssetImage(productImage),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        width: 35,
                        height: 35,
                        right: 5,
                        top: 5,
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.black45),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                              child: const Icon(Icons.favorite_outline, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width * 0.20 : MediaQuery.of(context).size.width * 0.31,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                title,
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'lama'),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow[500],
                                size: 20,
                              ),
                              Text("$rate (+999)",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'lama',
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: [
                          const Text(
                            "24,90د.إ",
                            style: TextStyle(fontFamily: 'lama', fontSize: 11, fontWeight: FontWeight.w400, decoration: TextDecoration.lineThrough, color: Color(0x73000000)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("$priceد.إ",
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3198B3),
                                fontFamily: 'lama',
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
