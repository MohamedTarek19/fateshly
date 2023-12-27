import 'dart:io';
import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_stepper/easy_stepper.dart' as st;
import 'package:fateshny/presentation/views/login_register/login_screens/user_screens/login_screen.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/vendor_screens/login_first.dart';
import 'package:fateshny/presentation/views/login_register/register/vendor_screens/vendor_finsh_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class VendorDocuments extends StatelessWidget {
  VendorDocuments({Key? key}) : super(key: key);
  List<String?> list = ['test1', 'test2'];
  String? val;
  String? value;
  var _Image;
  var imagePicker;
  int activeStep = 1;

  @override
  Widget build(BuildContext context) {
    val = null;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.18,
                //bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              child: SvgPicture.asset('assets/images/background.svg'),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.22,
                bottom: MediaQuery.of(context).size.height * 0.1,
              ),
              child: BlurryContainer(
                padding: const EdgeInsets.all(0),
                borderRadius: BorderRadius.circular(1),
                width: 150,
                height: 150,
                child: Container(),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.88,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/icon.png', width: 125, height: 125),
                          BlurryContainer(
                            padding: const EdgeInsets.only(top: 8, bottom: 1, left: 8, right: 8),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.68,
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                            child: Form(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      StatefulBuilder(
                                        builder: (BuildContext context, void Function(void Function()) setState) {
                                          return st.EasyStepper(
                                            enableStepTapping: false,
                                            padding: const EdgeInsets.only(top: 5, bottom: 0),
                                            activeStep: activeStep,
                                            lineStyle: const st.LineStyle(
                                              lineLength: 100,
                                              lineThickness: 2,
                                              lineSpace: 0,
                                              lineType: st.LineType.normal,
                                              defaultLineColor: Colors.white,
                                              finishedLineColor: Color(0xff330D66),
                                            ),
                                            activeStepTextColor: Colors.black87,
                                            finishedStepTextColor: Colors.black87,
                                            internalPadding: 5,
                                            showLoadingAnimation: false,
                                            stepRadius: 12,
                                            showStepBorder: false,
                                            steps: [
                                              st.EasyStep(
                                                customStep: Container(
                                                  width:24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(25),
                                                    gradient: const LinearGradient(colors: [
                                                      Color(0xff30C9CD),
                                                      Color(0xff318EAE),
                                                      Color(0xff323F84),
                                                      Color(0xff330Dee),
                                                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                                  ),
                                                  child: const Center(
                                                    child: Icon(Icons.check,color: Colors.white,size: 13,),
                                                  ),
                                                ),
                                              ),
                                              st.EasyStep(
                                                customStep: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Container(
                                                      width:24,
                                                      height: 24,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(25),
                                                        gradient: const LinearGradient(colors: [
                                                          Color(0xff30C9CD),
                                                          Color(0xff318EAE),
                                                          Color(0xff323F84),
                                                          Color(0xff330Dee),
                                                        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:22,
                                                      height: 22,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(100),
                                                      ),
                                                      child: Center(
                                                        child: Container(
                                                          width:5,
                                                          height: 5,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(100),
                                                            gradient: const LinearGradient(colors: [
                                                              Color(0xff30C9CD),
                                                              Color(0xff318EAE),

                                                              Color(0xff330Dee),
                                                            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              st.EasyStep(
                                                customStep: Container(
                                                  width:24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(100),
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                            ],
                                            onStepReached: (index) => setState(() => activeStep = index),
                                          );
                                        },
                                      ),
                                      //####################################################################33
                                      //                          [Name Text Field]
                                      //####################################################################33
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                          label: Text('الاسم الكامل'),
                                          hintText: 'أدخل اسمك بالكامل',
                                          hintStyle: TextStyle(color: Colors.white70),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                          ),
                                          labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                      //####################################################################33
                                      //                          [DropDown Widget]
                                      //####################################################################33
                                      Container(
                                        margin: const EdgeInsets.only(top: 15),
                                        child: InputDecorator(
                                          decoration: const InputDecoration(
                                            label: Text('القسم'),
                                            contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                                          ),
                                          child: CustomDropDownIcons(
                                            value: val,
                                            list: list,
                                          ),
                                        ),
                                      ),
                                      //####################################################################33
                                      //                          [Address Text Field]
                                      //####################################################################33
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15.0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                            label: Text('العنوان'),
                                            hintText: 'تحديد العنوان بالتفصيل',
                                            hintStyle: TextStyle(color: Colors.white70),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            labelStyle: TextStyle(color: Colors.white, fontSize: 17),
                                          ),
                                        ),
                                      ),
                                      //####################################################################33
                                      //                          [OwnerShip Contract]
                                      //####################################################################33
                                      StatefulBuilder(
                                        builder: (BuildContext context, void Function(void Function()) setState) {
                                          return Container(
                                            margin: const EdgeInsets.only(top: 30),
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height * 0.16,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                            child: DottedBorder(
                                              dashPattern: [5, 7],
                                              color: Colors.white,
                                              borderType: BorderType.RRect,
                                              radius: const Radius.circular(20),
                                              child: ClipRRect(
                                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                                child: InkWell(
                                                  onTap: () async {
                                                    setState(() {
                                                      _Image = null;
                                                    });
                                                    try {
                                                      print('img2');
                                                      final image = await ImagePicker().pickImage(
                                                        source: ImageSource.gallery,
                                                      );
                                                      if (image == null) return;
                                                      final imageTemp = File(image.path);
                                                      setState(() {
                                                        _Image = imageTemp;
                                                      });
                                                    } on PlatformException catch (e) {
                                                      print('Failed to pick image: $e');
                                                    }
                                                  },
                                                  child: Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: MediaQuery.of(context).size.height * 0.25,
                                                    child: Center(
                                                      child: _Image == null
                                                          ?
                                                          // Icon(
                                                          //   Icons.add_a_photo_outlined,
                                                          //   color: Colors.white,
                                                          //   size: 40,
                                                          // )
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                SvgPicture.asset(
                                                                  'assets/images/image.svg',
                                                                  width: 40,
                                                                  height: 40,
                                                                ),
                                                                const Text(
                                                                  'رفع صوره عقد الملكيه (إن وجد)',
                                                                  style: TextStyle(color: Colors.white),
                                                                ),
                                                              ],
                                                            )
                                                          : Image.file(
                                                              _Image,
                                                              fit: BoxFit.cover,
                                                              width: MediaQuery.of(context).size.width,
                                                              height: MediaQuery.of(context).size.height * 0.25,
                                                            ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      //####################################################################33
                                      //                          [Buttons Row]
                                      //####################################################################33
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 30),
                                            width: MediaQuery.of(context).size.width * 0.4,
                                            height: 45,
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
                                                maximumSize: Size(MediaQuery.of(context).size.width * 0.4, 80),
                                                minimumSize: Size(MediaQuery.of(context).size.width * 0.4, 50),
                                                backgroundColor: Colors.transparent,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "الرجوع",
                                                style: TextStyle(color: Colors.white, fontSize: 17),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(top: 30),
                                            width: MediaQuery.of(context).size.width * 0.4,
                                            height: 45,
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
                                                maximumSize: Size(MediaQuery.of(context).size.width * 0.3, 80),
                                                minimumSize: Size(MediaQuery.of(context).size.width * 0.3, 50),
                                                backgroundColor: Colors.transparent,
                                              ),
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                  return VendorFinishSignup();
                                                },));
                                              },
                                              child: const Text(
                                                "التالي",
                                                style: TextStyle(color: Colors.white, fontSize: 17),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      //####################################################################33
                                      //                          [having an account field]
                                      //####################################################################33
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'هل لديك حساب؟',
                                                style: TextStyle(fontSize: 16, color: Colors.white),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pushReplacement(context, MaterialPageRoute(
                                                    builder: (context) {
                                                      return const VendorLoginScreen();
                                                    },
                                                  ));
                                                },
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                    color: Color(0xff9BD9FF),
                                                    width: 1.0, // This would be the width of the underline
                                                  ))),
                                                  child: const Text(
                                                    "تسجيل الدخول",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(0xff9BD9FF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDropDownIcons extends StatelessWidget {
  CustomDropDownIcons({super.key, required this.value, required this.list});

  String? value;
  List<String?> list;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Container(
          padding: const EdgeInsets.only(left: 2),
          decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(5)),
          child: DropdownButton<String?>(
              icon: SvgPicture.asset(
                'assets/images/dropItem.svg',
                height: 10,
                width: 10,
                fit: BoxFit.contain,
              ),
              underline: const SizedBox(),
              hint: const Text(
                'اختر قسم المحل',
                style: TextStyle(color: Colors.white),
              ),
              value: value,
              isExpanded: true,
              borderRadius: BorderRadius.circular(5),
              items: list.map<DropdownMenuItem<String?>>((e) {
                return DropdownMenuItem<String?>(
                  value: e,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      e ?? '',
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  value = val!;
                });
              }),
        );
      },
    );
  }
}
