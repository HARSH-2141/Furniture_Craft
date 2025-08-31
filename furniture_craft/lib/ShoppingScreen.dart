import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_craft/CheckOutPage.dart';

import 'main.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MainScreen()),
        );
        return false; // Prevent default pop
      },

      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 50.0, right: 25.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFFF0F0F2),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => MainScreen()),
                          );
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      "Shopping",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 50.0, right: 25.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFFF0F0F2),
                      child: IconButton(
                        icon: Icon(
                          Icons.delete_forever,
                          color: Colors.redAccent,
                          size: 25,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300],
                                image: DecorationImage(
                                  image: AssetImage("images/shopping1.png"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 15,
                                  ),
                                  child: Text(
                                    "Minimalist Chair",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Regal Do Lobo",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 15,
                                  ),
                                  child: Text(
                                    "\$279.95",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 5),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Color(0xFFF0F0F2),
                                  child: Text(
                                    "-",
                                    style: TextStyle(color: Color(0xFF828A89)),
                                  ),
                                ),

                                Text("  04  "),
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.lightGreen,
                                  child: Text(
                                    "+",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300],
                                image: DecorationImage(
                                  image: AssetImage("images/shopping2.png"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 15,
                                  ),
                                  child: Text(
                                    "Hallingdal Chair",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Hatil-Loren",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 15,
                                  ),
                                  child: Text(
                                    "\$258.91",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 5),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Color(0xFFF0F0F2),
                                  child: Text(
                                    "-",
                                    style: TextStyle(color: Color(0xFF828A89)),
                                  ),
                                ),

                                Text("  01  "),
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.lightGreen,
                                  child: Text(
                                    "+",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300],
                                image: DecorationImage(
                                  image: AssetImage("images/shopping3.png"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 15,
                                  ),
                                  child: Text(
                                    "Hiro Armchair",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Hatil-Loren",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    top: 15,
                                  ),
                                  child: Text(
                                    "\$369.6",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 5),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Color(0xFFF0F0F2),
                                  child: Text(
                                    "-",
                                    style: TextStyle(color: Color(0xFF828A89)),
                                  ),
                                ),

                                Text("  04  "),
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.lightGreen,
                                  child: Text(
                                    "+",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: Container(
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Summary",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              summaryRow("Subtotal", "\$926.99"),
              summaryRow("Shipping Cost", "\$26.00"),
              Divider(),
              summaryRow("Total Payment", "\$956.90", bold: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Checkoutpage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Check Out", style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget summaryRow(String title, String value, {bool bold = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 16, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
        Text(value, style: TextStyle(fontSize: 16, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
      ],
    ),
  );
}

