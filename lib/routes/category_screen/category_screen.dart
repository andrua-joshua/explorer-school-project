import 'package:explorer/routes/category_screen/widgets/category_widgets.dart';
import 'package:flutter/material.dart';

//ignore:camel_case_types
class categoryScreen extends StatelessWidget{
  final String category;
  const categoryScreen({
    super.key, required this.category});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
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
            children: const [
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
              catUnitsWidget(title: 'Mabira Forest',imgUrl: "",),
            ],
          
        ))),
    );
  }
}