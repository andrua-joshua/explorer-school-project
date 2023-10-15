import 'package:explorer/routes.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class registrationFormWidget extends StatefulWidget {
  const registrationFormWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _registrationFormWidgetState createState() => _registrationFormWidgetState();
}

//ignore:camel_case_types
class _registrationFormWidgetState extends State<registrationFormWidget> {
  late final TextEditingController contactController;
  late final TextEditingController fullNameController;
  late final TextEditingController gmailController;
  late final TextEditingController passwordController;
  final key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    contactController = TextEditingController();
    fullNameController = TextEditingController();
    gmailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    contactController.dispose();
    gmailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 150, 149, 149)),
      padding: const EdgeInsets.all(10),
      child: Form(
          key: key,
          child: Column(
            children: [
              const SizedBox(
                child: Row(
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: TextField(
                  controller: fullNameController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.account_box),
                      hintText: 'Enter full name'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: TextField(
                  controller: gmailController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      hintText: 'Enter Email'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.security),
                      hintText: 'Enter password'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.homescreen),
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: ()=> Navigator.pop(context),
                child: const Text(
                  "I have an Account! Login",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          )),
    );
  }
}
