import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_craft/main.dart';

class DetailsPage1 extends StatefulWidget {
  const DetailsPage1({super.key});

  @override
  State<DetailsPage1> createState() => _DetailsPage1State();
}

class _DetailsPage1State extends State<DetailsPage1> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 50.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFF0F0F2),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => MainScreen()));
                        },
                        child: Icon(Icons.arrow_back)),
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Image.asset(
                  "images/chair 2.png",
                  width: 311,
                  height: 236,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fuji Arm Chair,\nModern Style",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "\$ 90.99",
                    style: TextStyle(
                      color: Color(0xFFF2A666),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_outline, color: Colors.grey),
                          Text(
                            " 341 seen",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.favorite_border, color: Colors.grey),
                          Text(
                            " 294 liked",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      RatingBarIndicator(
                        rating: 4.5,
                        // your rating value
                        itemBuilder: (context, index) =>
                            Icon(Icons.star, color: Colors.amber),
                        itemCount: 5,
                        itemSize: 30.0,
                        // size of stars
                        direction: Axis.horizontal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF828A89),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                          Text(
                            "Total : \$90.900",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(350, 55),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                              size: 16,
                            ),
                            Text(
                              " Add To Cart",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
          ],
        ),
      ),
    );
  }
}
