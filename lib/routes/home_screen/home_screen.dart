import 'package:explorer/routes/home_screen/widgets/home_widgets.dart';
import 'package:explorer/routes/util/data.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Map<String, List> featuers = {
      "forests":FeaturesData.forests,
      "mountains": FeaturesData.mountains,
      "lakes": FeaturesData.lakes,
      "rivers": FeaturesData.rivers,
      "gameparks": FeaturesData.gameparks
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                categoryWidget(title: 'FORESTS',imgUrl: "assets/features/Budongo_forest/image.jpeg", type: "forests",),
                SizedBox(height: 20,),
                categoryWidget(title: 'MOUNTAINS',imgUrl: "assets/features/Mt_Rwenzori/image.jpeg", type: "mountains",),
                SizedBox(height: 20,),
                categoryWidget(title: 'NATIONAL PARKS',imgUrl: "assets/features/Kibale_National_Park_mgahinga/image.jpg", type: "gameparks",),
                SizedBox(height: 20,),
                categoryWidget(title: 'LAKES',imgUrl: "assets/features/Lake_victoria/image.jpeg", type: "lakes",),
                SizedBox(height: 20,),
                categoryWidget(title: 'RIVERS',imgUrl: "assets/features/River_Katonga/image.jpeg", type: "rivers",)

                ],
            )),
      )),
      drawer: const drawerWidget(),
    );
  }
}
