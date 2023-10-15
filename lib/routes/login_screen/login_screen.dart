import 'package:explorer/routes/login_screen/widgets/login_widgets.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          logoWidget(),
          SizedBox(height: 80,),
          Padding(
            padding: EdgeInsets.all(20),
           child: loginFormWidget())
        ],
      ))),
    );
  }
}
