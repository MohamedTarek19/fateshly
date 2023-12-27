import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/user_screens/login_screen.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/vendor_screens/login_first.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VendorFinishSignup extends StatelessWidget {
  VendorFinishSignup({Key? key}) : super(key: key);
  int activeStep = 2;

  @override
  Widget build(BuildContext context) {
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
              child: ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    blendMode: BlendMode.srcOver,
                    child: Container(
                      width: 150,
                      height: 150,
                    )),
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
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon.png', width: 125, height: 125),
                          SizedBox(
                            height: 30,
                          ),
                          BlurryContainer(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.49,
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
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
                                              child: Center(
                                                child: Icon(Icons.check,color: Colors.white,size: 13,),
                                              ),
                                            ),
                                          ),
                                          EasyStep(
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
                                              child: Center(
                                                child: Icon(Icons.check,color: Colors.white,size: 13,),
                                              ),
                                            ),
                                          ),
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
                                        ],
                                        onStepReached: (index) => setState(() => activeStep = index),
                                      );
                                    },
                                  ),
                                  Text(
                                    'تم تقديم طلبك بنجاح',
                                    style: TextStyle(color: Colors.white, fontSize: 17),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'يرجي الإنتظار قيد مراجعة طلبك',
                                    style: TextStyle(color: Colors.white, fontSize: 17),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
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
                                      child: const Text(
                                        "الإشتراك",
                                        style: TextStyle(color: Colors.white, fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
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
