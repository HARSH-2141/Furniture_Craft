import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_craft/DetailsPages/DetailsPage%202.dart';
import 'package:furniture_craft/DetailsPages/DetailsPage.dart';

import '../main.dart';

class Reviewpage extends StatefulWidget {
  const Reviewpage({super.key});

  @override
  State<Reviewpage> createState() => _ReviewpageState();
}

class _ReviewpageState extends State<Reviewpage> {
  final List<Map<String, dynamic>> reviews = [
    {
      'name': 'Angelina ',
      'avatar': 'images/r1.jpg',
      'time': '16 Minute Ago',
      'rating': 4.5,
      'comment':
          'Nice Studio, The App Where You Can Buy Your Furniture With Just A Top Without Any Hassle.. Products Are Realy Awesome.....',
    },
    {
      'name': 'Anila Erin Maha',
      'avatar': 'images/r2.jpg',
      'time': '16 Minute Ago',
      'rating': 4.1,
      'comment':
          'Exellent Place To Discuss Your Furniture Ideas And Get Good Suggestions And Details.',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 50.0, right: 25.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFF0F0F2),
                    child: GestureDetector(
                      onTap: () {
                       Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 55),
                  child: Text(
                    "Reviews",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: double.infinity,
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4.6",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBarIndicator(
                            rating: 4.6,
                            // your rating value
                            itemBuilder: (context, index) =>
                                Icon(Icons.star, color: Colors.amber),
                            itemCount: 5,
                            itemSize: 24,
                            // size of stars
                            direction: Axis.horizontal,
                          ),
                          Text(
                            "367 reviews",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "5 Starts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 15,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                height: 15,
                                margin: EdgeInsets.only(right: 14),
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("86%"),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              "4 Starts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 15,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                height: 15,
                                margin: EdgeInsets.only(right: 84),
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("16%"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "3 Starts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 15,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                height: 15,
                                margin: EdgeInsets.only(right: 88),
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("12%"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "2 Starts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 15,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                height: 15,
                                margin: EdgeInsets.only(right: 92),
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("08%"),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "1 Starts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 15,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                height: 15,
                                margin: EdgeInsets.only(right: 96),
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text("04%"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Write Reviews",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                final review = reviews[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(review['avatar']),
                        radius: 22,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  review['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    review['time'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            RatingBarIndicator(
                              rating: review['rating'],
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, color: Colors.amber),
                              itemCount: 5,
                              itemSize: 18.0,
                              direction: Axis.horizontal,
                            ),
                            SizedBox(height: 4),
                            Text(
                              review['comment'],
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Read More',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.teal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 50),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a Comment',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    isDense: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward, color: Colors.white),
                          onPressed: () {
                            // Add your send action here
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
