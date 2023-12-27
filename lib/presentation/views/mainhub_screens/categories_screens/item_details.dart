import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({Key? key, required this.Category}) : super(key: key);
  String Category;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.15,left: MediaQuery.of(context).size.width*0.15,),
            child: SvgPicture.asset(
              'assets/images/LogoInApp1.svg',
              width: 40,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.92,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(right: 15, left: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 55,
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
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text(
                      'الفئة > ',
                      style: TextStyle(color: Colors.grey[500], fontSize: 15),
                    ),
                    Text(
                      '$Category',
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'قهوة',
                    style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold, fontFamily: 'lama'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.33,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/coffee.jpg',
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      width: 40,
                      height: 40,
                      right: 10,
                      top: 15,
                      child: BlurryContainer(
                        color: Colors.black12,
                        blur: 10,
                        elevation: 5,
                        child: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      width: 90,
                      height: 30,
                      left: 10,
                      bottom: 15,
                      child: BlurryContainer(
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        color: Colors.black12,
                        blur: 10,
                        elevation: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[500],
                            ),
                            Text("4.8 (+999)",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "السعر:",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        "د.إ",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        ' 24',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  color: Color(0xffECF5F9),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sold by: Vendor Name',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 25,
                                  color: Colors.yellow[500],
                                ),
                                Text("4.8 (+999)",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '47811 Melisa Squares,',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 25,
                                  color: Colors.grey[500],
                                ),
                                Text("1.5 Km",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'التفاصيل',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'يمتلئ عشاق اللحوم بطبقة من شرائح سجق اللحم البقري، ولحم البقر المفروم، وبرجر اللحم البقري، ونقانق الدجاج. ,في قضمة واحدة، يمكنك تذوق مجموعة متنوعة من اللحوم المصنعة الكثيرة.',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      height: 2,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'lama',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: [
                      Color(0xff30C9CD),
                      Color(0xff318EAE),
                      Color(0xff323F84),
                      Color(0xff330D69),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      maximumSize: Size(MediaQuery.of(context).size.width, 80),
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/message.svg'),
                        const Text(
                          "  تواصل مع البائع",
                          style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'lama',fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(colors: [
                      Color(0xff30C9CD),
                      Color(0xff318EAE),
                      Color(0xff323F84),
                      Color(0xff330D69),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      maximumSize: Size(MediaQuery.of(context).size.width, 80),
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/map.svg'),
                        const Text(
                          "  الإتجاه الى المحل",
                          style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'lama',fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SectionHead(
                  title: 'Suggestted',
                  seeMore: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 10),
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ProductDetailsScreen(
                                  Category: Category,
                                );
                              },
                            ),
                          );
                        },
                        child: CartItem(
                          productImage: 'assets/images/coffee.jpg',
                          title: 'قهوة',
                          price: '24',
                          rate: "4.8",
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionHead extends StatelessWidget {
  SectionHead({super.key, required this.title, required this.seeMore});

  String title;
  void Function() seeMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              )),
          InkWell(
            onTap: seeMore,
            child: const Text(
              "شاهد الكل",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xA6000000),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
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
