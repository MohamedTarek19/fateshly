import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fateshny/bussiness_logic/cubits/sliders_cubit.dart';
import 'package:fateshny/presentation/views/mainhub_screens/categories_screens/categories_screen.dart';
import 'package:fateshny/presentation/views/mainhub_screens/categories_screens/filtered_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainHome extends StatelessWidget {
  MainHome({Key? key}) : super(key: key);

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: true,
        minimum: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: MediaQuery.of(context).size.height * 0.17,
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 10,
                scrolledUnderElevation: 5,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "مرحبا ",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "أحمد",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/placeMarker.svg',height: 20,width: 20,),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          'السعودية, الرياض',
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SvgPicture.asset(
                      'assets/images/inAppLogo.svg',
                      height: 60,
                    ),
                  ),
                ],
                bottom: AppBar(
                  surfaceTintColor: Colors.white,
                  backgroundColor: Colors.white,
                  flexibleSpace: Container(
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
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  SectionHead(
                    title: 'الاقسام',
                    seeMore: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const CategoriesScreen();
                      },),);
                    },
                  ),
                  Container(
                    height: 110,
                    margin: const EdgeInsets.only(top: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/bake.svg',
                              title: 'مخبوزات',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'مخبوزات');
                              },));
                            },
                          ),
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/health.svg',
                              title: 'صحة',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'صحة');
                              },));
                            },
                          ),
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/furniture.svg',
                              title: 'أثاث',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'أثاث');
                              },));
                            },
                          ),
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/sebaka.svg',
                              title: 'سباكة',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'سباكة');
                              },));
                            },
                          ),
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/dehanat.svg',
                              title: 'دهانات',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'دهانات');
                              },));
                            },
                          ),
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/camera.svg',
                              title: 'كاميرات',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'كاميرات');
                              },));
                            },
                          ),
                          InkWell(
                            child: const Categories(
                              icon: 'assets/images/electronic.svg',
                              title: 'أجهزة كهربائية',
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FilteredItems(title: 'أجهزة كهربائية');
                              },));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SectionHead(
                    title: 'الأماكن المجاورة',
                    seeMore: () {},
                  ),
                  BlocBuilder<SlidersCubit, SlidersState>(
                    builder: (context, state) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 0),
                        height: 250,
                        alignment: Alignment.center,
                        child: StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 220,
                                  width: MediaQuery.of(context).size.width,
                                  child: CarouselSlider(
                                    carouselController: _controller,
                                    options: CarouselOptions(
                                      autoPlay: true,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                        });
                                      },
                                      viewportFraction: 1,
                                      enlargeFactor: 0.7,
                                      enlargeCenterPage: true,
                                    ),
                                    items: context.read<SlidersCubit>().imageSliders,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: context.read<SlidersCubit>().imgList.asMap().entries.map((entry) {
                                    return AnimatedContainer(
                                      duration: const Duration(milliseconds: 500),
                                      width: _current == entry.key ? 18.0 : 10,
                                      height: 10.0,
                                      margin: const EdgeInsets.only(right: 5, left: 5, top: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        shape: BoxShape.rectangle,
                                        color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black).withOpacity(
                                          _current == entry.key ? 0.9 : 0.4,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                )
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                  SectionHead(
                    title: 'إقتراحات',
                    seeMore: () {},
                  ),
                  const SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SuggestionsItem(image: 'assets/images/image!.png'),
                          SuggestionsItem(image: 'assets/images/slide@.jpg'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SuggestionsItem(image: 'assets/images/slide@.jpg'),
                          SuggestionsItem(image: 'assets/images/image!.png'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestionsItem extends StatelessWidget {
  SuggestionsItem({
    super.key,
    required this.image,
  });
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0,bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 220,
                width: MediaQuery.of(context).size.width*0.43,
              ),
            ),
            Positioned(
              bottom: 0,
              child: BlurryContainer(
                padding: EdgeInsets.zero,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0)),
                height: 111,
                width: MediaQuery.of(context).size.width*0.45,
                child: Container(
                  width:MediaQuery.of(context).size.width*0.8,
                  padding: const EdgeInsets.only(top: 220*0.07,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('اسم البائع', style: TextStyle(fontSize: 18,fontFamily: 'lama',fontWeight: FontWeight.bold,color: Colors.white),),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[500],
                            size: 20,
                          ),
                          const Text("(+999) 4.8",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'lama'
                              ))
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("الرياض, حي النزهة",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lama'
                              )),
                          const SizedBox(width: 1),
                          SvgPicture.asset('assets/images/marker2.svg'),
                          const SizedBox(width: 1),
                          const Text("1.2 كم",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'lama'
                              )),


                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 220 * 0.25,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: CircleAvatar(
                  maxRadius:38,
                  minRadius:38,
                  child: Image.asset(
                    'assets/images/ic.jpg',
                  ),
                ),
              ),
            ),
          ],
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
    required this.addToCartOnTap,
    required this.price,
    required this.rate,
    required this.title,
  });

  String productImage;
  String title;
  String rate;
  String price;
  void Function() addToCartOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 140,
          width: 170,
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
                      height: 130,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(productImage),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Positioned(
                      width: 35,
                      height: 35,
                      right: 5,
                      top: 5,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white54),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: const Icon(Icons.favorite_outline, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[500],
                      ),
                      Text("$rate (+999)",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "24,90\$",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, decoration: TextDecoration.lineThrough, color: Color(0x73000000)),
                  ),
                  Text("$price\$",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0CB502),
                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: const Color(0xff0CB502),
                        shadowColor: const Color(0xff0CB502),
                        elevation: 5),
                    onPressed: addToCartOnTap,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [SvgPicture.asset('assets/images/Icons/buyCart.svg'), const Text("Add to cart", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white))],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(30),
            elevation: 10,
            child: SvgPicture.asset(
              icon,
              height: 60,
              width: 60,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
