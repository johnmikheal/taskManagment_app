import 'package:flutter/material.dart';
import 'package:project_6/presentation/screens/home_screen.dart';

class RoutsManager{
  static const String homeRoute = '/home';

 static Route<dynamic>? router(RouteSettings Settings){
     switch(Settings.name){
       case homeRoute :{
         return MaterialPageRoute(builder: (context) => HomeScreen(),);
       }
     }
  }
}
//{Route<dynamic>? Function(RouteSettings)? onGenerateRoute}