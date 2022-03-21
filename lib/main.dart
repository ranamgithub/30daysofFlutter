import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     themeMode: ThemeMode.light,
     theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       ),
     darkTheme: ThemeData(
       brightness: Brightness.dark
     ),
   
     routes: {
       "/":(context) =>  loginpage(),
        "/home":(context) =>  homepage(), 
        "/Login":(context) =>  loginpage(),    },
   );
  }
  }

class GoogleFonts {
  static latoTextTheme() {}

  static lato(String s) {}
}