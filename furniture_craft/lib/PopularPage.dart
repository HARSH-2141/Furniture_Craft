import 'package:flutter/material.dart';
import 'main.dart';

class Popularpage extends StatefulWidget {
  const Popularpage({super.key});

  @override
  State<Popularpage> createState() => _PopularpageState();
}

class _PopularpageState extends State<Popularpage> {
  bool isFavorite = false;

  final List<Map<String, dynamic>> PopularItem = [
    {
      'image': 'images/p1.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
      'price': "\$279.95",
    },
    {
      'image': 'images/p2.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
      'price': "\$279.95",
    },
    {
      'image': 'images/p3.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
      'price': "\$279.95",
    },
    {
      'image': 'images/p4.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
      'price': "\$279.95",
    },
    {
      'image': 'images/p5.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
      'price': "\$279.95",
    },
    {
      'image': 'images/p6.png',
      'title': "Minimalist Chair",
      'subtitle': "126 Products",
      'price': "\$279.95",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 50.0, right: 25.0),
                  child: GestureDetector(
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
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Popular",
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
            ListView.builder(
              padding: EdgeInsets.only(right: 25.0, left: 25.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: PopularItem.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
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
                            image: AssetImage(PopularItem[index]['image']!),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              PopularItem[index]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              PopularItem[index]['subtitle'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              PopularItem[index]['price'],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
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
    );
  }
}
