import 'package:explorer/routes/category_screen/widgets/category_widgets.dart';
import 'package:explorer/routes/util/data.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class categoryScreen extends StatelessWidget{
  final String category;
  final String type;
  const categoryScreen({
    super.key, required this.category, required this.type});

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
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context), 
          icon:const Icon(Icons.arrow_back)),
        title: Text(category),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child:GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 15,
            cacheExtent: 200,
            children: List.generate(featuers[type]!.length, 
            (index) => catUnitsWidget(
              index: index,
              type: type,)),
          
        ))),
    );
  }
}