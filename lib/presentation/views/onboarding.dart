import 'package:fateshny/bussiness_logic/cubits/sliders_cubit.dart';
import 'package:fateshny/presentation/views/login_register/login_register.dart';
import 'package:fateshny/presentation/views/login_register/login_register_vendor.dart';
import 'package:fateshny/presentation/views/mainhub_screens/main_hub_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/icon.png', width: 125, height: 125),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/body.png', width: MediaQuery.of(context).size.width * 0.5, height: MediaQuery.of(context).size.height * 0.7),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3, left: MediaQuery.of(context).size.width * 0.15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/userIcon.svg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.39,
                        height: 45,
                        //margin: EdgeInsets.only(left: 50,right: 50),
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
                            maximumSize: Size(MediaQuery.of(context).size.width * 0.1, 80),
                            minimumSize: Size(MediaQuery.of(context).size.width * 0.1, 50),
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () async {
                            await Navigator.push(context, MaterialPageRoute(
                              builder: (ctxt) {
                                return LoginRegister();
                              },
                            ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              const Text(
                                "مستخدم",
                                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // InkWell(
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //       return LoginRegister();
                      //     },));
                      //   },
                      //   child: SvgPicture.asset('assets/images/userButton.svg',
                      //       width: 60, height: 60),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06, left: MediaQuery.of(context).size.width * 0.35, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/vendor.svg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 45,
                        //margin: EdgeInsets.only(left: 50,right: 50),
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
                            maximumSize: Size(MediaQuery.of(context).size.width * 0.1, 80),
                            minimumSize: Size(MediaQuery.of(context).size.width * 0.1, 50),
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const LoginRegisterVendor();
                              },
                            ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              const Text(
                                "بائع",
                                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<SlidersCubit, SlidersState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1, left: MediaQuery.of(context).size.width * 0.21, right: 10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[700],
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/images/guest.svg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.28,
                            height: 45,
                            //margin: EdgeInsets.only(left: 50,right: 50),
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
                                maximumSize: Size(MediaQuery.of(context).size.width * 0.1, 80),
                                minimumSize: Size(MediaQuery.of(context).size.width * 0.1, 50),
                                backgroundColor: Colors.transparent,
                              ),
                              onPressed: () {
                                context.read<SlidersCubit>().SliderInitializer(context);
                                Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MainHubScreen();
                                  },
                                ));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                  const Text(
                                    "زائر",
                                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
