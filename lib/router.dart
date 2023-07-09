import 'package:flutter/material.dart';
import 'package:missionse/main.dart';
import 'package:missionse/LoginPage.dart';
import 'package:missionse/SignupPage.dart';
import 'package:missionse/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args=settings.arguments;
    switch (settings.name) {
      case '/' :
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(title: "Instagram",));
      case '/login':
          return MaterialPageRoute(builder: (_) =>
              const LoginPage(
              ));
      case '/signup':
        return MaterialPageRoute(builder: (_) =>
        const SignupPage(

        ));
      case '/mainpage':
        if(args is UserCredential) {return MaterialPageRoute(builder: (_)=>MainPage(userCredential: args));}
        return _errorpage();
      default :
        return _errorpage();
    }
  }
  static Route<dynamic> _errorpage(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
        title : const Text("Error"),
    ),
    body: const Center(
    child: Text("ERROR"),
    ),
    );
    });
  }
}