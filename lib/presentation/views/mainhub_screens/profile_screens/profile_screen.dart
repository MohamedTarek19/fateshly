import 'package:fateshny/presentation/views/mainhub_screens/profile_screens/edit_account_screen.dart';
import 'package:fateshny/presentation/views/mainhub_screens/profile_screens/who_are_we.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final colorC = const Color(0x41000000);
  bool _flag = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffF2F1ff),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffefefef),
                          offset: Offset(
                            10,
                            -3,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          CircleAvatar(
                            radius: 50,
                            child: Image.asset('assets/images/avatar.png'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'يوسف محمد',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'lama',
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/placemrk.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'السعودية,',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'lama',
                                  fontSize: 15,
                                ),
                              ),
                              const Text(
                                'الرياض   ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'lama',
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return EditAccountScreen();
                      },));
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: SvgPicture.asset(
                                  'assets/images/accountEdit.svg',
                                  fit: BoxFit.fill,
                                  height: 70,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'تعديل الحساب',
                                style: TextStyle(fontFamily: 'lama', fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return WhoAreWe();
                      },));
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: SvgPicture.asset(
                                  'assets/images/about.svg',
                                  fit: BoxFit.fill,
                                  height: 70,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'من نحن؟',
                                style: TextStyle(fontFamily: 'lama', fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: SvgPicture.asset(
                                'assets/images/notify.svg',
                                fit: BoxFit.fill,
                                height: 70,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'الإشعار',
                              style: TextStyle(fontFamily: 'lama', fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return CupertinoSwitch(
                              applyTheme: true,

                              value: _flag,
                              onChanged: (value) {
                                setState(() {
                                  _flag = !_flag;
                                });
                              },
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
        ),
      ),
    );
  }
}
