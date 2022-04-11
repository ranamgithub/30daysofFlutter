import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/utilis/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     themeMode: ThemeMode.light,
     theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.lato().fontFamily,
       primaryTextTheme: GoogleFonts.latoTextTheme(),
       ),
       darkTheme: ThemeData(
         brightness: Brightness.light
       ),
       debugShowCheckedModeBanner: false,
        routes: {
       "/":(context) =>  loginpage(),
       MyRoutes.homeRoute:(context) =>  homepage(), 
       MyRoutes.loginRoute:(context) =>  loginpage(),    },
   );
  }
  }

