import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_craft/CategoriesPage.dart';
import 'package:furniture_craft/DetailsPages/DetailsPage.dart';
import 'package:furniture_craft/FilterPage.dart';
import 'package:furniture_craft/NotificationsPage.dart';
import 'package:furniture_craft/PopularPage.dart';
import 'DetailsPages/DetailsPage 2.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return false;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/user.jpeg"),
              ),
              title: Text(
                "Welcome,",
                style: TextStyle(color: Color(0xFF828A89)),
              ),
              subtitle: Text(
                "Harsh Ghetiya",
                style: TextStyle(color: Colors.black),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => NotificationsPage()),
                  );
                },
                icon: Icon(Icons.notification_add_outlined, size: 28),
              ),
            ),
            SizedBox(height: 20),

            // The scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: "Search Furniture",
                          suffixIcon: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Filterpage()),
                              );
                            },
                            icon: Icon(Icons.tune),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Spacial Offers",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            // --- Offer Card 1 ---
                            Stack(
                              children: [
                                Container(
                                  height: 180,
                                  width: 325,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage("images/Scroll.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: 325,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black45,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 15),
                                        child: Text(
                                          "25% Discount",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 5),
                                        child: Text(
                                          "For a Cozy Yellow Set!",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 20),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.lightGreen,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Learn More",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            // --- Offer Card 2 ---
                            Stack(
                              children: [
                                Container(
                                  height: 180,
                                  width: 325,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage("images/Scroll2.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: 325,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black45,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 15),
                                        child: Text(
                                          "35% Discount",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 5),
                                        child: Text(
                                          "For a Cozy Yellow Set!",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 20),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.lightGreen,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "Shop Now",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ArmChair buttons etc
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.lightGreen,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.chair_outlined, color: Colors.white),
                                      SizedBox(width: 4),
                                      Text(
                                        "ArmChair",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.lightGreen,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.chair, color: Colors.white),
                                      SizedBox(width: 4),
                                      Text(
                                        "ArmChair",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.lightGreen,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.bed_outlined, color: Colors.white),
                                      SizedBox(width: 4),
                                      Text(
                                        "Bed",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.lightGreen,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.lightbulb, color: Colors.white),
                                      SizedBox(width: 4),
                                      Text(
                                        "Light",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Most Interested",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Categories()),
                              );
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(
                                color: Color(0xffF2A666),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => Detailspage()),
                                );
                              },
                              child: Container(
                                height: 280,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffDDDDDD),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        "images/chair 1.png",
                                        width: 150,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Ox Mathis Chair",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "Hans j. wegner",
                                        style: TextStyle(color: Colors.grey[700]),
                                      ),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.lightGreen,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "\$9.99",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => DetailsPage1()),
                                );
                              },
                              child: Container(
                                height: 280,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffDDDDDD),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(
                                        "images/chair 2.png",
                                        width: 150,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Fuji Arm Chair",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "Hans j. wegner",
                                        style: TextStyle(color: Colors.grey[700]),
                                      ),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.lightGreen,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "\$9.99",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Popularpage()),
                              );
                            },
                            child: Text(
                              "View All",
                              style: TextStyle(
                                color: Color(0xffF2A666),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 140,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffDDDDDD),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("images/chair 3.png"),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Swoon Lounge",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Regal Do Lobo",
                                        style: TextStyle(color: Colors.grey[700]),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "\$136.79",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              height: 140,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffDDDDDD),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset("images/chair 4.png"),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Touco Armachiar",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Hatil-Loren",
                                        style: TextStyle(color: Colors.grey[700]),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "\$148.65",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
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
