import 'package:explorer/routes.dart';
import 'package:explorer/routes/splash_screen/widgets/splash_screen_widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context){
    switcher(context);
    return const Scaffold(
      body: SafeArea(
        child:
        Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UgExploreWidget(),
          SizedBox(height: 20,),
          Text(
            "Uganda the pearl of Africa",
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic
            ),)
        ],
      ))),
    );
  }

  Future<void> switcher(BuildContext context)async{
    await Future.delayed(const Duration(seconds: 5));
    debugPrint("hellooo.....");
    Navigator.pushNamed(context, RouteGenerator.loginscreen);
  }
}