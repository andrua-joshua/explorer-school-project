
import 'package:flutter/material.dart';

//ignore:camel_case_types
class catUnitsWidget extends StatelessWidget{
  final String title;
  final String imgUrl;

  const catUnitsWidget({
    required this.title,
    required this.imgUrl,
    super.key
    });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Column(
        children: [
          Text(title),
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.greenAccent
            ),
          )
        ],
      ),
    );
  }
}