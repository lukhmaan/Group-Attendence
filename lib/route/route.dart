import 'package:flutter/material.dart';

import '../views/entity.dart';
import '../views/home.dart';
import '../views/login.dart';
import '../views/dailyatt.dart';
import '../Screens/login/login.dart';
import '../views/weeklyatt.dart';

// route names
const String entityPage = 'Splash';
const String loginPage = 'login';
const String loginScreen = 'LoginScreen';
const String homePage = 'home';
const String dailyatt = 'dailyattendance';
const String weeklyatt = 'weeklyattendance';

void login() {}

// controller function to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case entityPage: //2nd screen
      return MaterialPageRoute(builder: (context) => const Entity());
    case loginPage: //0 screen
      return MaterialPageRoute(builder: (context) => const Splash());
    case loginScreen: //1st screen
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case homePage: //home screen
      return MaterialPageRoute(builder: (context) => const MyApp());
    case dailyatt:
      return MaterialPageRoute(builder: (context) => const RegisterPage());
    case weeklyatt:
      return MaterialPageRoute(builder: (context) => const Weeklyatt());

    default:
      throw ('this route name does not exist');
  }
}
