

import 'package:explorer/routes/category_screen/category_screen.dart';
import 'package:explorer/routes/details_screen/details_screen.dart';
import 'package:explorer/routes/home_screen/home_screen.dart';
import 'package:explorer/routes/login_screen/login_screen.dart';
import 'package:explorer/routes/register_screen/register_screen.dart';
import 'package:explorer/routes/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator{

  static const String splashscreen = '/';
  static const String loginscreen = '/login';
  static const String registerscreen = '/registerscreen';
  static const String homescreen = '/homescreen';
  static const String categoryscreen = '/categoryscreen';
  static const String detailsscreen = '/detailsscreen';


  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashscreen:
          return MaterialPageRoute(
            builder: (context)=>const SplashScreen());
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
          final Map<String, String> arg = settings.arguments as Map<String,String>;

          return MaterialPageRoute(
            builder: (context)=> categoryScreen(
              category: arg["title"]??"",
              type: arg["type"]??""
            ));
      case detailsscreen:
          final Map<String, dynamic>  args= settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder:(context)=> detailsScreen(index: args["index"], type: args["type"],));
      default:
        return MaterialPageRoute(
          builder: (context)=>const loginScreen());
    }
  }

}