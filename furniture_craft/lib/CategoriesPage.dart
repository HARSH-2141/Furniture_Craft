import 'package:flutter/material.dart';

import 'main.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Map<String, dynamic>> CategoriesItem = [
    {
      'image': 'images/c1.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
    },
    {
      'image': 'images/c2.png',
      'title': "hiro arm Chair",
      'subtitle': "236 Products",
    },
    {
      'image': 'images/c3.png',
      'title': "florence Chair",
      'subtitle': "375 Products",
    },
    {
      'image': 'images/c4.png',
      'title': "pearlystic Chair",
      'subtitle': "296 Products",
    },
    {
      'image': 'images/c5.png',
      'title': "arm oxer Chair",
      'subtitle': "946 Products",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                  Text(
                    "Categories",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Icon(Icons.category),
                ],
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
              padding: EdgeInsets.only(right: 25.0, left: 25.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: CategoriesItem.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(CategoriesItem[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              CategoriesItem[index]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              CategoriesItem[index]['subtitle'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
