import 'package:explorer/routes/login_screen/widgets/login_widgets.dart';
import 'package:explorer/routes/register_screen/widgets/register_widgets.dart';
import 'package:explorer/routes/splash_screen/widgets/splash_screen_widgets.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class registerScreen extends StatelessWidget {
  const registerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          // logoWidget(),
          UgExploreWidget(),
          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.all(20),
           child: registrationFormWidget())
        ],
      ))),
    );
  }
}
