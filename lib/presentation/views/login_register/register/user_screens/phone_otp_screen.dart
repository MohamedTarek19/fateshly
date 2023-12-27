import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:fateshny/bussiness_logic/cubits/phone_auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneOtpScreen extends StatelessWidget {
  PhoneOtpScreen({Key? key}) : super(key: key);

  late String code;
  var otpTextStyles = [
    const TextStyle(fontSize: 16),
    const TextStyle(fontSize: 16),
    const TextStyle(fontSize: 16),
    const TextStyle(fontSize: 16),
    const TextStyle(fontSize: 16),
    const TextStyle(fontSize: 16),
  ];

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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'التحقق من الهاتف',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'أوشكت على الوصول! ما عليك سوى التحقق من هاتفك للمتابعة.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          BlocBuilder<PhoneAuthCubit, PhoneAuthState>(
                            builder: (context, state) {
                              return BlurryContainer(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: MediaQuery.of(context).size.height * 0.37,
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(20),
                                child: Form(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Center(
                                          child: Directionality(
                                            textDirection: TextDirection.ltr,
                                            child: OtpTextField(
                                              styles: otpTextStyles,
                                              numberOfFields: 6,
                                              borderWidth: 1,
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                              ),
                                              borderRadius: BorderRadius.circular(15),
                                              borderColor: Colors.white,
                                              margin: EdgeInsets.only(right: 5, left: 5),
                                              showFieldAsBox: true,
                                              onSubmit: (value) {
                                                code = value;
                                                context.read<PhoneAuthCubit>().typedSms = value;
                                              },
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
                                            onPressed: () async {
                                              showDialog(
                                                context: context,
                                                barrierDismissible: false,
                                                builder: (context) {
                                                  return Center(child: CircularProgressIndicator());
                                                },
                                              );
                                              var creds = await context.read<PhoneAuthCubit>().SendSms(smsCode: context.read<PhoneAuthCubit>().typedSms);
                                              Navigator.pop(context);
                                              if (creds.runtimeType == UserCredential) {
                                                if(creds.user == null){
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        elevation: 5,
                                                        title: Text("Your Phone is not verifird!!!!1"),
                                                      );
                                                    },
                                                  );
                                                }else{
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        elevation: 5,
                                                        title: Text("Confirmed!"),
                                                      );
                                                    },
                                                  );
                                              }}else{
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      elevation: 5,
                                                      title: Text(creds),
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                            child: const Text(
                                              "التحقق",
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
                                                  'لم تتلقى الرمز؟',
                                                  style: TextStyle(fontSize: 16, color: Colors.white),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                                    //   return VendorDetails();
                                                    // },));
                                                  },
                                                  child: Container(
                                                    decoration: const BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                      color: Color(0xff9BD9FF),
                                                      width: 1.0, // This would be the width of the underline
                                                    ))),
                                                    child: const Text(
                                                      "إعادة الإرسال",
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
                              );
                            },
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
