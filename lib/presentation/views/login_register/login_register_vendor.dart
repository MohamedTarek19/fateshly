import 'dart:math';
import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/user_screens/login_screen.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/vendor_screens/login_first.dart';
import 'package:fateshny/presentation/views/login_register/register/user_screens/user_details.dart';
import 'package:fateshny/presentation/views/login_register/register/vendor_screens/vendor_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginRegisterVendor extends StatelessWidget {
  const LoginRegisterVendor({Key? key}) : super(key: key);

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
              child: BlurryContainer(
                padding: EdgeInsets.all(0),
                borderRadius: BorderRadius.circular(1),
                width: 150,
                height: 150,
                child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/icon.png',
                            width: 125, height: 125),
                        Padding(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.15,),
                          child: BlurryContainer(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.23,
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff30C9CD),
                                          Color(0xff318EAE),
                                          Color(0xff323F84),
                                          Color(0xff330D69),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      maximumSize:
                                      Size(MediaQuery.of(context).size.width, 80),
                                      minimumSize:
                                      Size(MediaQuery.of(context).size.width, 50),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return  VendorLoginScreen();
                                      },));
                                    },
                                    child: const Text(
                                      "تسجيل دخول",
                                      style:
                                      TextStyle(color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    maximumSize:
                                    Size(MediaQuery.of(context).size.width, 80),
                                    minimumSize:
                                    Size(MediaQuery.of(context).size.width, 50),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return VendorDetails();
                                    },));
                                  },
                                  child: const Text('الإشتراك',style: TextStyle(color: Color(0xff3198B3), fontSize: 17),),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
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
