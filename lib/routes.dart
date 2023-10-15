

import 'package:explorer/routes/category_screen/category_screen.dart';
import 'package:explorer/routes/home_screen/home_screen.dart';
import 'package:explorer/routes/login_screen/login_screen.dart';
import 'package:explorer/routes/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator{

  static const String loginscreen = '/';
  static const String registerscreen = '/registerscreen';
  static const String homescreen = '/homescreen';
  static const String categoryscreen = '/categoryscreen';
  static const String detailsscreen = '/detailsscreen';


  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case loginscreen:
          return MaterialPageRoute(
            builder: (context)=>const loginScreen());
      case registerscreen:
          return MaterialPageRoute(
            builder: (context)=>const registerScreen());
      case homescreen:
          return MaterialPageRoute(
            builder: (context)=>const homeScreen());
      case categoryscreen:
          final String arg = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context)=> categoryScreen(
              category: arg,
            ));
      case detailsscreen:
          final String arg = settings.arguments as String;
      default:
        return MaterialPageRoute(
          builder: (context)=>const loginScreen());
    }
  }

}