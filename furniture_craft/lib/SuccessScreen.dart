import 'package:flutter/material.dart';
import 'package:furniture_craft/CheckOutPage.dart';
import 'package:furniture_craft/TrackPage.dart';
import 'package:furniture_craft/homescreen.dart';
import 'package:furniture_craft/main.dart';
import 'package:lottie/lottie.dart';

class Successscreen extends StatefulWidget {
  const Successscreen({super.key});

  @override
  State<Successscreen> createState() => _SuccessscreenState();
}

class _SuccessscreenState extends State<Successscreen> {
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
            Container(color: Colors.black45),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 50),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white24,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black87,
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => MainScreen()),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: const Text(
                          'Success',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 130),
                // Main content area
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Success checkmark
                          Center(
                            child: Lottie.asset(
                              "images/Success_Anim.json",
                              width: 180,
                            ),
                          ),
                          SizedBox(height: 32),
                          Text(
                            'Thank You For\nYour Order',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              height: 1.3,
                            ),
                          ),

                          SizedBox(height: 16),

                          // Description text
                          Text(
                            'Your Order Been Place Successfully. You\nCan Track The Delivery In The Order\nSection',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              height: 1.5,
                            ),
                          ),

                          SizedBox(height: 48),

                          // Back Home button
                          TextButton(
                            onPressed: () {
                              // Navigate to home screen
                              // Navigator.push(context, MaterialPageRoute(builder: (_) => Trackpage())
                              // );
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                            ),
                            child: Text(
                              'Back Home',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                          // Track your order button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => Trackpage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightGreen,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Track your Order',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Additional text
                          Text(
                            'You Can Order Somethings Also',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
