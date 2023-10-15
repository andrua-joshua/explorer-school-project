import 'package:explorer/routes/home_screen/widgets/home_widgets.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Uganda"),
        actions: const [
          Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ))
        ],
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Column(
              children: [
                sliderWidget(),
                SizedBox(height: 30,),
                categoryWidget(title: 'FORESTS AND MOUNTAINS',imgUrl: ''),
                SizedBox(height: 20,),
                categoryWidget(title: 'NATIONAL PARKS',imgUrl: ''),
                SizedBox(height: 20,),
                categoryWidget(title: 'LAKES AND RIVERS',imgUrl: '')
                ],
            )),
      )),
      drawer: const drawerWidget(),
    );
  }
}
