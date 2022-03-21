import 'package:flutter/material.dart';


class homepage extends StatelessWidget {

  
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