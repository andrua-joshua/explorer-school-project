import 'package:explorer/routes/details_screen/widgets/details_screen_widgets.dart';
import 'package:explorer/routes/util/data.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class detailsScreen extends StatelessWidget{
  final String type;
  final int index;
  const detailsScreen({super.key, required this.type, required this.index});

  @override
  Widget build(BuildContext context){

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
        leading: IconButton(onPressed: ()=> Navigator.pop(context), 
        icon: const Icon(Icons.arrow_back)),

        title: Text(featuers[type]![index]["name"]),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(featuers[type]![index]["briefInfo"],
                 style: TextStyle(
                  fontSize: 17
                 ),),
                 SizedBox(height: 10,),
                // imagesWidget(),
                Container(
                  constraints: const BoxConstraints.expand(height: 200),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(featuers[type]![index]["sampleImage"]))
                  ),
                ),
                SizedBox(height: 20,),
                sectionTwoWidget(title: "History", details: featuers[type]![index]["history"]),
                SizedBox(height: 20,),
                sectionTwoWidget(title: "Details", details: featuers[type]![index]["description"]),
                SizedBox(height: 20,),
                // sectionTwoWidget(title: "Location", details: "other details")
                
            ],
          )),
        )),
    );
  }
}