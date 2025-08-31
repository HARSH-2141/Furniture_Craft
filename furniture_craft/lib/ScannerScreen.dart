import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MainScreen()),
        );
        return false;
      },

      child: Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset("images/background.png", fit: BoxFit.fill),
            ),
            Positioned(
              top: 100,
              left: 75,
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black54,
                ),
                child: Center(
                  child: Text(
                    "Point your camera at furniture",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Stack(
                  children: [
                    // Top Left corner
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.white, width: 4),
                            top: BorderSide(color: Colors.white, width: 4),
                          ),
                        ),
                      ),
                    ),
                    // Top Right corner
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.white, width: 4),
                            top: BorderSide(color: Colors.white, width: 4),
                          ),
                        ),
                      ),
                    ),
                    // Bottom Left corner
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.white, width: 4),
                            bottom: BorderSide(color: Colors.white, width: 4),
                          ),
                        ),
                      ),
                    ),
                    // Bottom Right corner
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.white, width: 4),
                            bottom: BorderSide(color: Colors.white, width: 4),
                          ),
                        ),
                      ),
                    ),
                    // Optional: a translucent center box
                    Padding(
                      padding: const EdgeInsets.only(top: 55.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 300,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white.withOpacity(0.80),
                                // Top: more dark
                                Colors.white.withOpacity(0.10),
                                // Bottom: more light
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 635, left: 25, right: 25),
              child: Container(
                height: 115,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                          image: DecorationImage(
                            image: AssetImage("images/chair 3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Minimalist Chair",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Regal Do Lobo",
                            style: TextStyle(color: Color(0xFF828A89)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                Text(
                                  "\$79.90",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.star, color: Colors.amber, size: 20),
                                SizedBox(width: 5),
                                Text(
                                  "4.6",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
