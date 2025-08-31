import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'intro3.dart';
import '../main.dart';

class intro2 extends StatefulWidget {
  const intro2({super.key});

  @override
  State<intro2> createState() => _intro2State();
}

class _intro2State extends State<intro2> {
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
            Center(child: Image.asset("images/Group 182.png")),
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
                  ),                CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.lightGreen,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> intro3()));
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
