import 'package:flutter/material.dart';
import 'package:furniture_craft/CheckOutPage.dart';

class Paymentmethod extends StatefulWidget {
  const Paymentmethod({super.key});

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  final List<Map<String, dynamic>> PaymentItem = [
    {'image': 'images/google logo.png'},
    {'image': 'images/apple-pay.png'},
    {'image': 'images/cc.png'},
    {'image': 'images/more.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: EdgeInsets.only(top: 50.0, left: 50),
                  child: Text(
                    "Payment",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFF232526),  // almost black
                      Color(0xFF0F2027),  // very dark blue
                    ],
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 25.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Harsh Ghetiya",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset("images/cc.png", width: 50),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        "4562 1122 4595 7852",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 25.0,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exp Date",
                                style: TextStyle(
                                  color: Color(0xFF828A89),
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "16/23",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVC Number",
                                style: TextStyle(
                                  color: Color(0xFF828A89),
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "962",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Text("Master Card",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Choose payment method",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: PaymentItem.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        item['image'],
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Promo Code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 1),
                      ),]
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 5),
                      child: SizedBox(
                        height: 25,
                        width: 230,

                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Promo Code",

                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.lightGreen,

                      ),
                      child: Center(child: Text("Apply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 190,
        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Text("\$956.90",style: TextStyle(color: Color(0xFFF2A666),fontSize: 18),),
                ],
              ),

              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Payment", style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
