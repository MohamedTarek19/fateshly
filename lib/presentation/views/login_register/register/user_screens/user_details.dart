import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:fateshny/bussiness_logic/cubits/phone_auth_cubit.dart';
import 'package:fateshny/presentation/views/login_register/login_screens/user_screens/login_screen.dart';
import 'package:fateshny/presentation/views/login_register/register/user_screens/phone_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserDetails extends StatelessWidget {
  UserDetails({Key? key}) : super(key: key);
  List<Map<String, String>>? list = [
    {'+20': 'assets/images/egypt.svg'},
    {
      '+966': 'assets/images/saudi.svg',
    }
  ];
  TextEditingController phone = TextEditingController();
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/icon.png', width: 125, height: 125),
                          BlurryContainer(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.58,
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
                                    BlocBuilder<PhoneAuthCubit, PhoneAuthState>(
                                      builder: (context, state) {
                                        return Padding(
                                          padding: const EdgeInsets.only(top: 15),
                                          child: TextFormField(
                                            controller: context.read<PhoneAuthCubit>().phone,
                                            decoration: InputDecoration(
                                              contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                              label: const Text('رقم الهاتف'),
                                              hintText: 'xxx xxx xxxx',
                                              hintStyle: const TextStyle(color: Colors.white70),
                                              prefixIcon: SizedBox(
                                                width: MediaQuery.of(context).size.width * 0.25,
                                                child: CustomDropDownIcons(
                                                  value: val,
                                                  list: list,
                                                ),
                                              ),
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
                                        );
                                      },
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
                                    BlocBuilder<PhoneAuthCubit, PhoneAuthState>(
                                      builder: (context, state) {
                                        return Container(
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
                                              if (val?.entries.first.key.contains('+20') ?? false) {
                                                String phoneNumber = (val?.entries.first.key ?? '') + context.read<PhoneAuthCubit>().phone.text;
                                                print(phoneNumber);
                                                await context.read<PhoneAuthCubit>().verifyPhoneNumber(phone: phoneNumber);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return PhoneOtpScreen();
                                                    },
                                                  ),
                                                );
                                              }
                                            },
                                            child: const Text(
                                              "الإشتراك",
                                              style: TextStyle(color: Colors.white, fontSize: 17),
                                            ),
                                          ),
                                        );
                                      },
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
                                                    return const LoginScreen();
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
          padding: const EdgeInsets.only(left: 2),
          decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(5)),
          child: DropdownButton<Map<String, String>?>(
              icon: const Icon(Icons.arrow_drop_down_rounded),
              underline: const SizedBox(),
              value: value,
              isExpanded: true,
              borderRadius: BorderRadius.circular(5),
              items: list?.map<DropdownMenuItem<Map<String, String>?>>((e) {
                print(e);
                return DropdownMenuItem<Map<String, String>?>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset(
                        e.entries.first.value,
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        e.entries.first.key,
                        style: const TextStyle(fontSize: 13, color: Colors.black12),
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
