import 'package:flutter/material.dart';


class homepage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";

  
  const homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
       body: Center(
         child:Container(
         child:Text("Moazam"),
     ),
   ),
   drawer: Drawer(), 
    );
     }
}