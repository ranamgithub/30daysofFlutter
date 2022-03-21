import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  get style => null;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:Column(
        children: [
          Image.asset("assets/images/login_images.png",
          fit: BoxFit.cover),
          Text("welcome",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),)
        ],
      )
    );

}
}