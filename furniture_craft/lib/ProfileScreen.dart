import 'package:flutter/material.dart';
import 'package:furniture_craft/Setting.dart';

import 'main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, dynamic>> profileItem = [
    {'icon': Icons.person_2_outlined, 'title': "Profile"},
    {'icon': Icons.payment_outlined, 'title': "Payment Methods"},
    {'icon': Icons.history, 'title': "Order history"},
    {'icon': Icons.delivery_dining, 'title': "Delivery Address"},
    {'icon': Icons.support_agent, 'title': "Support Center"},
    {'icon': Icons.policy_outlined, 'title': "Legal Policy "},
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      "Profile",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Setting()),
                        );
                      },
                      icon: Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/user.jpeg"),
                    ),
                    Positioned(
                      top: 80,
                      left: 70,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Harsh Ghetiya",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "harshghetiya0@gmail.com",
                style: TextStyle(color: Color(0xFF828A89), fontSize: 15),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: profileItem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        leading: Icon(profileItem[index]['icon']),
                        title: Text(profileItem[index]["title"]),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 90),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
