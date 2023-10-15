import 'package:explorer/routes.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class loginFormWidget extends StatefulWidget {
  const loginFormWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _loginFormWidgetState createState() => _loginFormWidgetState();
}

//ignore:camel_case_types
class _loginFormWidgetState extends State<loginFormWidget> {
  late final TextEditingController gmailController;
  late final TextEditingController passwordController;
  final key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    gmailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
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
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, RouteGenerator.registerscreen),
                child: const Text(
                  "Dont have an Account! Register",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteGenerator.homescreen);
                  },
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ))
            ],
          )),
    );
  }
}

//ignore:camel_case_types
class logoWidget extends StatelessWidget {
  const logoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color.fromARGB(255, 197, 89, 216),
      ),
      padding: const EdgeInsets.all(10),
      child: const Column(
        children: [
          Text(
            'Explore',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'UGANDA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
