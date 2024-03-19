// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'login.dart';
// import 'main.dart';

// void main() {
//   runApp();
// }


class SplashScreen extends StatefulWidget{
  static const String routeName = "/SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();

  }

  _navigatetohome()async
  {
    await Future.delayed(const Duration(seconds: 5),(){});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context,MyLogin.routeName);
  }

    @override
    Widget build(BuildContext context)
    {
      return Scaffold(body: Center(child: Image.asset("assets/Message.png"),));
    }
}