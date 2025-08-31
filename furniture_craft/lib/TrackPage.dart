import 'package:flutter/material.dart';
import 'package:furniture_craft/main.dart';

import 'ShoppingScreen.dart';

class Trackpage extends StatefulWidget {
  const Trackpage({super.key});

  @override
  State<Trackpage> createState() => _TrackpageState();
}

class _TrackpageState extends State<Trackpage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MainScreen()),
        );
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(child: Image.asset('images/Map.png',width: double.infinity,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 50.0, right: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MainScreen()),
                      );                    },
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
                    "Track Order",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 465,
                width: double.infinity,
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 16,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 40,
                      height: 4,
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        leading: CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/user.jpeg'),
                        ),
                        title: Text(
                          'Harsh Ghetiya',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text(
                          'Drive - Rajkot (Gujarat)',
                          style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                        trailing: Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.phone, color: Colors.green),
                          padding: EdgeInsets.all(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    ListTile(
                      leading: Icon(Icons.access_time),
                      title: Text('Surat (Gujarat)'),
                      subtitle: Text('Houseing State | 16:40'),
                      contentPadding: EdgeInsets.zero,
                      // dense: true,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              3, // number of dashes
                              (index) => Padding(
                                padding: EdgeInsets.symmetric(vertical: 3.0),
                                child: Container(
                                  width: 4,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    // match dash color
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Rajkot (Gujarat)'),
                      subtitle: Text('House | 18:08'),
                      contentPadding: EdgeInsets.zero,
                      // dense: true,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(

                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor:
                              Colors.lightGreen, // match accent color
                        ),
                        child: Text(
                          'Order Received',
                          style: TextStyle(color: Colors.white,fontSize: 20),
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
