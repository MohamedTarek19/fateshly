import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fateshny/bussiness_logic/cubits/screens_navigator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainHubScreen extends StatelessWidget {
  const MainHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreensNavigatorCubit, ScreensNavigatorState>(
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.white,
              color: Colors.grey[300]!,
              height: 60,
              animationDuration: Duration(milliseconds: 300),
              buttonBackgroundColor: Color(0xffECF5F9),

              items: <Widget>[
                context
                    .read<ScreensNavigatorCubit>()
                    .selectedIndex == 0 ?SvgPicture.asset('assets/images/home.svg',):SvgPicture.asset('assets/images/hme.svg',),
                context
                    .read<ScreensNavigatorCubit>()
                    .selectedIndex == 1?SvgPicture.asset('assets/images/fav.svg',):SvgPicture.asset('assets/images/favourites.svg',),
                context
                    .read<ScreensNavigatorCubit>()
                    .selectedIndex == 2 ?SvgPicture.asset('assets/images/prof.svg',):SvgPicture.asset('assets/images/profile.svg',),
              ],
              onTap: (index) {
                context
                    .read<ScreensNavigatorCubit>().selectPage(index);
              },
            ),
            body: context.read<ScreensNavigatorCubit>().screens[context
                .read<ScreensNavigatorCubit>().selectedIndex],
          ),
        );
      },
    );
  }
}
