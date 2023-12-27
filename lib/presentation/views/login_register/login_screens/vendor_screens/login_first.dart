import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:fateshny/presentation/views/login_register/register/user_screens/user_details.dart';
import 'package:fateshny/presentation/views/login_register/register/vendor_screens/vendor_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VendorLoginScreen extends StatelessWidget {
  const VendorLoginScreen({Key? key}) : super(key: key);

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
                      top: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/icon.png',
                              width: 125, height: 125),
                          BlurryContainer(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.5,
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(20),
                            child: Form(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                        label: Text('البريد الإلكتروني'),
                                        hintText: 'example@gmail.com',
                                        hintStyle: TextStyle(color: Colors.white70),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Colors.white),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Colors.white),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.solid,
                                              color: Colors.white),
                                        ),
                                        labelStyle: TextStyle(
                                            color: Colors.white, fontSize: 17),
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
                                            icon: const Icon(Icons.visibility,color: Colors.white,),
                                          ),
                                          hintText: 'أدخل كلمة المرور',
                                          hintStyle: TextStyle(color: Colors.white70),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                style: BorderStyle.solid,
                                                color: Colors.white),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                style: BorderStyle.solid,
                                                color: Colors.white),
                                          ),
                                          focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                style: BorderStyle.solid,
                                                color: Colors.white),
                                          ),
                                          labelStyle: const TextStyle(
                                              color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ListTileTheme(
                                            horizontalTitleGap: -1,
                                            child: CheckboxListTile(
                                              splashRadius: 15,
                                              contentPadding: const EdgeInsets.all(0),
                                              controlAffinity:
                                              ListTileControlAffinity.leading,
                                              title: const Text(
                                                'تذكرني',
                                                style: TextStyle(fontSize: 14,color: Colors.white),
                                              ),
                                              value: true,
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            child: TextButton(
                                              onPressed: () {

                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                          color: Colors.white,
                                                          width:
                                                          1.0, // This would be the width of the underline
                                                        ))),
                                                child: const Text(
                                                  "هل نسيت كلمة المرور؟",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
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

                                        },
                                        child: const Text(
                                          "تسجيل دخول",
                                          style:
                                          TextStyle(color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20,top: 30),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'ليس لديك حساب؟',
                                              style: TextStyle(fontSize: 16,color: Colors.white),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                                  return VendorDetails();
                                                },));
                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                          color: Color(0xff9BD9FF),
                                                          width:
                                                          1.0, // This would be the width of the underline
                                                        ))),
                                                child: const Text(
                                                  "التسجيل",
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
