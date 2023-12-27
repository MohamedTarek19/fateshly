import 'package:fateshny/bussiness_logic/cubits/phone_auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditAccountScreen extends StatelessWidget {
  EditAccountScreen({Key? key}) : super(key: key);
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("البيانات الشخصية",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'lama',
                fontSize: 20,
              )),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.92,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(right: 10, top: 20, left: 10),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          label: Text('العنوان'),
                          hintText: 'ش. سعيد غنيم',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                          ),
                          labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 5,
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
                                  borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                                ),
                                labelStyle: const TextStyle(color: Colors.black, fontSize: 17),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          obscureText: true,
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
                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black),
                            ),
                            labelStyle: const TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color(0xff30C9CD),
                            Color(0xff330D69),
                          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            maximumSize: Size(MediaQuery.of(context).size.width, 80),
                            minimumSize: Size(MediaQuery.of(context).size.width, 50),
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "حفظ التغييرات",
                            style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold, fontFamily: 'lama'),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1),
                          gradient: const LinearGradient(colors: [
                            Color(0xff30C9CD),
                            Color(0xff330D69),
                          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            maximumSize: Size(MediaQuery.of(context).size.width, 49),
                            minimumSize: Size(MediaQuery.of(context).size.width, 49),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: GradientText(
                            'إلغاء',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'lama'),
                            gradient: const LinearGradient(colors: [
                              Color(0xff30C9CD),
                              Color(0xff330D69),
                            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                          ),
                        ),
                      ),
                    ],
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

class CustomDropDownIcons extends StatelessWidget {
  CustomDropDownIcons({super.key, required this.value, required this.list});

  Map<String, String>? value;
  List<Map<String, String>>? list;

  @override
  Widget build(BuildContext context) {
    print(list!.length);
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
                        height: 18,
                        width: 18,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        e.entries.first.key,
                        style: const TextStyle(fontSize: 13, color: Colors.black),
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

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
