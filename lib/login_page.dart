import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/routes.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
 String name = ""; 
 bool changebutton = false;

  IconData? done;




  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child:Column(
        children: [
          Image.asset("assets/images/login_images.png",
          fit: BoxFit.cover),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
            child: Column(children: [
              TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter username",
                labelText: "User Name",
              ),
              onChanged: (value){
                name = value;
              },
            ),
               TextFormField(
                 obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
            const SizedBox(
            height: 40.0,
          ),
            InkWell(
              onTap: () async{
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(Duration(seconds : 1));
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: changebutton ?50 : 150,
              height: 50,
              alignment: Alignment.center,
              child:changebutton?Icon(done,color: Colors.white ): Text(
                "login",
                style: TextStyle(
                  color : Colors.white,
                  fontWeight :FontWeight.bold,
                  fontSize:18),
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(changebutton ? 50 : 8)
              ),
            ),
          )
          // ElevatedButton(
          //   child: const Text("Login"),
          //   style: TextButton.styleFrom(maximumSize:const Size(150, 40)),
          //   onPressed: () {
          //    Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          // ),
            ],

            ),
          ),
           Text("welcome $name",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
      )); 

}
}
