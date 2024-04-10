import 'package:flutter/material.dart';

//ignore:camel_case_types
class imagesWidget extends StatelessWidget{
  const imagesWidget({super.key});

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, dimension){
        double width = dimension.maxWidth;

        return SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: width*0.4,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 236, 236, 236)
                ),
              ),
              Container(
                width: width*0.4,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 236, 236, 236)
                ),
              ),
            ],
          ),
        );
      });
  }

}

//ignore:camel_case_types
class sectionTwoWidget extends StatelessWidget{
  final String title;
  final String details;
  const sectionTwoWidget({
    required this.title,
    required this.details,
    super.key
    });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
           Text(details, style: const TextStyle(fontSize: 17),),
        ],
      ),
    );
  }
}