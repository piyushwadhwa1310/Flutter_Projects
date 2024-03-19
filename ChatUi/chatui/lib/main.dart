import 'package:flutter/material.dart';
import 'package:chatui/login.dart';
import 'package:chatui/register.dart';
import 'package:chatui/SplashScreen.dart';
import 'package:chatui/homescreen.dart';
void main() {

  runApp(const MyApp());

  }
class MyApp extends StatelessWidget{
   const MyApp({super.key});
   @override
   Widget build(BuildContext context){
    return MaterialApp( debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    initialRoute: SplashScreen.routeName,
    routes: {
      MyLogin.routeName:(context) => const MyLogin(),
      MyRegister.routeName:(context) => const MyRegister(),
      SplashScreen.routeName:(context) => const SplashScreen(), 
      ChatApp.routeName:(context) => const ChatApp(),
      }
      );
   }
    }
  
