import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_craft/main.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  bool isFavorite = false;

  List<bool> favoriteList = [];

  @override
  void initState() {
    super.initState();
    favoriteList = List<bool>.filled(favouriteItems.length, false);
  }

  final List<Map<String, String>> favouriteItems = [
    {
      'image': 'images/grid1.png',
      'name': 'Rotating Lounge Chair',
      'price': '\$39.00',
    },
    {
      'image': 'images/grid2.png',
      'name': 'Trapeziam Arm Chair',
      'price': '\$36.00',
    },
    {
      'image': 'images/grid3.png',
      'name': 'Corada D3 Lounge Chair',
      'price': '\$45.21',
    },
    {
      'image': 'images/grid4.png',
      'name': 'Pearl Beading Fur Textured',
      'price': '\$29.68',
    },
  ];

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      top: 50.0,
                      right: 25.0,
                    ),
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
                      "Favourite",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      top: 50.0,
                      right: 25.0,
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFFF0F0F2),
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.lightGreen,
                          size: 25,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 260,
                  ),
                  itemCount: favouriteItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    favouriteItems[index]['image']!,
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      favoriteList[index] =
                                          !favoriteList[index];
                                    });
                                  },
                                  child: Icon(
                                    favoriteList[index]
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: favoriteList[index]
                                        ? Colors.red
                                        : Colors.lightGreen,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            favouriteItems[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            favouriteItems[index]['price']!,
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
