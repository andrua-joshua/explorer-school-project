import 'package:explorer/routes.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class sliderWidget extends StatelessWidget {
  const sliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(height: 150),
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          const Text(
            "FOREST",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

//ignore:camel_case_types
class categoryWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
  const categoryWidget({required this.title, required this.imgUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Text(
            title,
            style:
                const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteGenerator.categoryscreen,
                    arguments: title);
              },
              child: Container(
                constraints: const BoxConstraints.expand(height: 150),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
              ))
        ],
      ),
    );
  }
}

//ignore:camel_case_types
class drawerWidget extends StatelessWidget {
  const drawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimensions) {
      double width = dimensions.maxWidth * 0.8;
      return Container(
        constraints: BoxConstraints.expand(width: width),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 201, 200, 200)),
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 48,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "DORA DEX",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text("doradex87@gmail.com"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.mail),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Contact us")
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.settings),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Settings")
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.info_outline),
                            SizedBox(
                              width: 4,
                            ),
                            Text("About us")
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.help_outline),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Helps & FAQs")
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Share")
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context, RouteGenerator.loginscreen),
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(Icons.logout_rounded),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Logout")
                          ],
                        ),
                      ))
                ],
              )),
        ),
      );
    });
  }
}
