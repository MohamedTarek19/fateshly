import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/user_screens/login_screen.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/vendor_screens/login_first.dart';
import 'package:fateshny/presentation/views/login_register/register/vendor_screens/vendor_documents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VendorDetails extends StatelessWidget {
  VendorDetails({Key? key}) : super(key: key);
  int activeStep = 0;
  List<Map<String, String>>? list = [
    {'+966': 'assets/images/saudi.svg'}
  ];
  Map<String, String>? val;

  @override
  Widget build(BuildContext context) {
    val = list!.first;
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
                top: MediaQuery.of(context).size.height * 0.2,
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
                padding: EdgeInsets.all(0),
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
                      top: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/icon.png', width: 125, height: 125),
                          BlurryContainer(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.65,
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
                                          return EasyStepper(
                                              enableStepTapping: false,
                                            padding: EdgeInsets.only(top: 5, bottom: 0),
                                            activeStep: activeStep,
                                            lineStyle: LineStyle(
                                              lineLength: 100,
                                              lineThickness: 2,
                                              lineSpace: 0,
                                              lineType: LineType.normal,
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
                                              EasyStep(
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
                                              EasyStep(
                                                customStep: Container(
                                                  width:24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                    color: Colors.white
                                                  ),
                                                ),
                                              ),
                                              EasyStep(
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
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                            label: Text('البريد الإلكتروني'),
                                            hintText: 'example@gmail.com',
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
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                            label: Text('رقم الهاتف'),
                                            hintText: 'xxx xxx xxxx',
                                            hintStyle: TextStyle(color: Colors.white70),
                                            prefixIcon: SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.25,
                                              child: CustomDropDownIcons(
                                                value: val,
                                                list: list,
                                              ),
                                            ),
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
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                            label: const Text('كلمة المرور'),
                                            suffixIcon: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.visibility,
                                                color: Colors.white,
                                              ),
                                            ),
                                            hintText: 'أدخل كلمة المرور',
                                            hintStyle: const TextStyle(color: Colors.white70),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
                                            ),
                                            labelStyle: const TextStyle(color: Colors.white, fontSize: 17),
                                          ),
                                        ),
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
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(
                                              builder: (context) {
                                                return VendorDocuments();
                                              },
                                            ));
                                          },
                                          child: const Text(
                                            "التالي",
                                            style: TextStyle(color: Colors.white, fontSize: 17),
                                          ),
                                        ),
                                      ),
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
                                                      return VendorLoginScreen();
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

  Map<String, String>? value;
  List<Map<String, String>>? list;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Container(
          padding: EdgeInsets.only(left: 2),
          decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(5)),
          child: DropdownButton<Map<String, String>?>(
              icon: Icon(Icons.arrow_drop_down_rounded),
              underline: const SizedBox(),
              value: value,
              isExpanded: true,
              borderRadius: BorderRadius.circular(5),
              items: list?.map<DropdownMenuItem<Map<String, String>?>>((e) {
                return DropdownMenuItem<Map<String, String>?>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset(
                        e.entries.first.value,
                        fit: BoxFit.fitWidth,
                      ),
                      Text(
                        e.entries.first.key,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
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
