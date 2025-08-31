import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_craft/IntroPage/intro2.dart';
import 'package:furniture_craft/main.dart';

class intro1 extends StatefulWidget {
  const intro1({super.key});

  @override
  State<intro1> createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          SystemNavigator.pop(); // closes the app (Android)
        } else if (Platform.isIOS) {
          exit(0); // force close on iOS (not recommended, but works)
        }
        return false;
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("images/Group 183.png")),
            SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MainScreen()),
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xFF828A89),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.lightGreen,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => intro2()),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
