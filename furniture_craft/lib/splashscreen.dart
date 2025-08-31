import 'package:flutter/material.dart';
import 'package:furniture_craft/IntroPage/intro1.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed( Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  intro1()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Image.asset("images/Logo (1).png", color: Colors.black,),
      ),
    );
  }
}
