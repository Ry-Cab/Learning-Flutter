import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter_application_1/aulas/10_componentiza%C3%A7%C3%A3o/home_page.dart';
import './login_page.dart';

class AppWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
      return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red,
      brightness: AppController.instance.isDarkTheme? 
      Brightness.dark 
      : 
      Brightness.light,
      ),
      
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
    });
  }

}