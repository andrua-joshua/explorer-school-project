
import 'package:explorer/routes.dart';
import 'package:explorer/routes/util/data.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class catUnitsWidget extends StatelessWidget{
  final String type;
  final int index;

  const catUnitsWidget({
    required this.type,
    required this.index,
    super.key
    });

  @override
  Widget build(BuildContext context){
    
    Map<String, List> featuers = {
      "forests":FeaturesData.forests,
      "mountains": FeaturesData.mountains,
      "lakes": FeaturesData.lakes,
      "rivers": FeaturesData.rivers,
      "gameparks": FeaturesData.gameparks
    };

    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, RouteGenerator.detailsscreen, arguments: {"index":index,"type":type}),
      child:SizedBox(
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const Color.fromARGB(255, 238, 238, 238),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(featuers[type]![index]["sampleImage"]))
            ),
          ),
          Text(
            featuers[type]![index]["name"],
            style: const TextStyle(
              fontSize: 17,
            ),),
        ],
      ),
    ));
  }
}