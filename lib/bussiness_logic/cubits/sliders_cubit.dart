import 'package:bloc/bloc.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta/meta.dart';

part 'sliders_state.dart';

class SlidersCubit extends Cubit<SlidersState> {
  SlidersCubit() : super(SlidersInitial());
  final List<String> imgList = [
    'assets/images/slider.jpg',
    'assets/images/slider.jpg',
    'assets/images/slider.jpg',
  ];
  late List<Widget> imageSliders;

  SliderInitializer(BuildContext context) {
    imageSliders = imgList
        .map(
          (item) => ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: BlurryContainer(
                    padding: EdgeInsets.zero,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0)),
                    height: 320 * 0.3
                    ,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width*0.8,
                          padding: EdgeInsets.only(right: 110,top: 320*0.05,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text('اسم البائع', style: TextStyle(fontSize: 18,fontFamily: 'lama',fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[500],
                                    size: 20,
                                  ),
                                  Text("(+999) 4.8",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'lama'
                                      ))
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text("الرياض, حي النزهة",
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'lama'
                                      )),
                                  SizedBox(width: 1),
                                  SvgPicture.asset('assets/images/marker2.svg'),
                                  SizedBox(width: 1),
                                  Text("1.2 كم",
                                      style: const TextStyle(
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
                        Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 320 * 0.2,
                  right: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: CircleAvatar(
                      maxRadius:44,
                      minRadius:44,
                      child: Image.asset(
                        'assets/images/ic.jpg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();
  }
}
