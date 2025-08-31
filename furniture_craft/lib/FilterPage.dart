import 'package:flutter/material.dart';
import 'package:furniture_craft/main.dart';

class Filterpage extends StatefulWidget {
  const Filterpage({super.key});

  @override
  State<Filterpage> createState() => _FilterpageState();
}

class _FilterpageState extends State<Filterpage> {
  RangeValues _currentRangeValues = const RangeValues(256, 25973);

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
                  padding: EdgeInsets.only(left: 25.0, top: 50.0, right: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFFF0F0F2),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0,right: 175),
                  child: Text(
                    "Filter",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brand",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Color(0xffF2A666), fontSize: 15),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.lightGreen,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Partex",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 5),

                                Icon(Icons.check, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Regal Furniture",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(width: 5),

                                Icon(Icons.check),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Partex", style: TextStyle(fontSize: 15)),
                                SizedBox(width: 5),
                                Icon(Icons.check),
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
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Color(0xFFE5E5E5)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Text(
                "Color",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.circle, color: Colors.green),
                            SizedBox(width: 5),
                            Text(
                              "Green",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.check, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle, color: Colors.yellow),
                            SizedBox(width: 5),
                            Text(
                              "Yellow",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.check, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.circle, color: Colors.black),
                            SizedBox(width: 5),
                            Text(
                              "Black",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.check, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle, color: Colors.grey),
                            SizedBox(width: 5),
                            Text(
                              "Grey",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.check, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Color(0xFFE5E5E5)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Text(
                "Price Range",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${_currentRangeValues.start.round()}"),
                  Text("\$${_currentRangeValues.end.round()}"),
                ],
              ),
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 30000,
              activeColor: Colors.lightGreen,
              inactiveColor: Colors.grey[300],
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),

            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Color(0xFFE5E5E5)),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Customer Review",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "5",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.lightGreen,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Color(0xFFE5E5E5)),
            ),
            SizedBox(height: 105),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Apply Filter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
