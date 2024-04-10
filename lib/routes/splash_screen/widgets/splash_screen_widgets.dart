import 'package:flutter/material.dart';

class UgExploreWidget extends StatelessWidget{
  const UgExploreWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue
      ),

      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Explore",
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),

          Text(
            "UGANDA",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
            ),)
        ],
      )
      
    );
  }
}