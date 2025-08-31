import 'package:flutter/material.dart';
import 'package:furniture_craft/PaymentMethod.dart';
import 'package:furniture_craft/ShoppingScreen.dart';
import 'package:furniture_craft/SuccessScreen.dart';

import 'main.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  int selectedIndex = -1;
  int selectedAddress = -1;

  final List<Map<String, dynamic>> addresses = [
    {
      'icon': Icons.edit,
      'title': 'Home Address',
      'phone': '(269) 444-6853',
      'line': 'Road Number 5649 Akali',
    },
    {
      'icon': Icons.edit,
      'title': 'Home Address',
      'phone': '(269) 444-6853',
      'line': 'Road Number 5649 Akali',
    },
  ];

  final List<Map<String, dynamic>> PaymentItem = [
    {'image': 'images/cc.png', 'title': 'Cradit Card'},
    {'image': 'images/google logo.png', 'title': 'Google Pay'},
    {'image': 'images/apple-pay.png', 'title': 'Apple Pay'},
    {'image': 'images/more.png', 'title': 'All 12 Methods'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                  padding: EdgeInsets.only(top: 50.0, left: 60),
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Shipping To",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: addresses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading:
                          index ==
                              selectedAddress // or any condition based on your logic
                          ? Icon(
                              Icons.radio_button_checked,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.radio_button_unchecked,
                              color: Colors.grey,
                            ),
                      onTap: () {
                        setState(() {
                          selectedAddress = index;
                        });
                      },
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            addresses[index]["title"],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            addresses[index]["phone"],
                            style: TextStyle(color: Color(0xFF828A89)),
                          ),
                          Text(
                            addresses[index]["line"],
                            style: TextStyle(color: Color(0xFF828A89)),
                          ),
                        ],
                      ),
                      trailing: Icon(addresses[index]["icon"]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: PaymentItem.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: Center(
                          child: Image.asset(
                            PaymentItem[index]['image'],
                            height: 28,
                          ),
                        ),
                      ),
                      tileColor: Colors.white,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            PaymentItem[index]["title"],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),

                      trailing: PaymentItem[index]['title'] == 'All 12 Methods'
                          ? Icon(Icons.arrow_forward_ios, color: Colors.black)
                          : index == selectedIndex
                          ? Icon(
                              Icons.radio_button_checked,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.radio_button_unchecked,
                              color: Colors.grey,
                            ),
                      onTap: () {
                        if (PaymentItem[index]['title'] == 'All 12 Methods') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Paymentmethod()),
                          );
                        } else {
                          setState(() {
                            selectedIndex = index;
                          });
                        }
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 270,
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
              "Amount",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            summaryRow("Item Total", "\$367.65"),
            summaryRow("Delivery Fee", "\$80.00"),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "\$447.99",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Successscreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Payment",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
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
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            color: Color(0xFF828A89),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            color: Color(0xFF828A89),
          ),
        ),
      ],
    ),
  );
}
