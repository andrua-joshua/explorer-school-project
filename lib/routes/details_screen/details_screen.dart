import 'package:explorer/routes/details_screen/widgets/details_screen_widgets.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class detailsScreen extends StatelessWidget{
  final String title;
  const detailsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, 
        icon: const Icon(Icons.arrow_back)),

        title: Text(title),
      ),
      body: const  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Text(""),
                imagesWidget(),
                sectionTwoWidget(title: "", details: ""),
                sectionTwoWidget(title: "", details: ""),
                sectionTwoWidget(title: "Location", details: "other details")
                
            ],
          ),
        )),
    );
  }
}