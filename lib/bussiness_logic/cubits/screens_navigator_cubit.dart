import 'package:bloc/bloc.dart';
import 'package:fateshny/presentation/views/mainhub_screens/favourites_screen.dart';
import 'package:fateshny/presentation/views/mainhub_screens/main_home.dart';
import 'package:fateshny/presentation/views/mainhub_screens/profile_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'screens_navigator_state.dart';

class ScreensNavigatorCubit extends Cubit<ScreensNavigatorState> {
  ScreensNavigatorCubit() : super(ScreensNavigatorInitial());

  static const TextStyle optionStyle =
  TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'home',
      style: optionStyle,
    ),
    Text(
      'Favourites',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  int selectedIndex = 0;
  late List<Widget> screens;

  ScreensInitializer(){
    screens = [
      MainHome(),
      FavouritesScreen(),
      ProfileScreen(),
    ];
  }

  void selectPage(int index){
    selectedIndex = index;
    emit(ScreensChange());
  }




}
