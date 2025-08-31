import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_craft/IntroPage/intro2.dart';

import '../LoginPage/LogInPage.dart';

class intro3 extends StatefulWidget {
  const intro3({super.key});

  @override
  State<intro3> createState() => _intro3State();
}

class _intro3State extends State<intro3> {
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
            Center(child: Image.asset("images/Group 181.png")),
            SizedBox(height: 120),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(350, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Signinscreen()),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
