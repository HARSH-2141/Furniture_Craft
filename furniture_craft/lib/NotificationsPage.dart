import 'package:flutter/material.dart';

import 'main.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final List<Map<String, dynamic>> NotificationItem = [
    {
      'image': 'images/c5.png',
      'title': "your order will be ship. once we get confirl address",
      'subtitle': "16 minute ago",
    },
    {
      'image': 'images/c2.png',
      'title': "special offer on bean upto 46% off all the products",
      'subtitle': "26 minute ago",
    },
    {
      'image': 'images/c3.png',
      'title': "new products you may like are available go and show now.",
      'subtitle': "49 minute ago",
    },
    {
      'image': 'images/c4.png',
      'title': "your order 3 summery green chair has been shipped!",
      'subtitle': "26 Day ago",
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
                    "Notification",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        NotificationItem.clear();
                      });
                    },
                    child: Text(
                      "Clear All",
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
              padding: EdgeInsets.only(right: 25.0, left: 25.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: NotificationItem.length,
              itemBuilder: (context, index) {
                final item = NotificationItem[index];
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  // swipe left
                  onDismissed: (direction) {
                    setState(() {
                      NotificationItem.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Notification deleted")),
                      );
                    });
                  },
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(bottom: 15), // <-- Match child's margin
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFDEEEE),
                      radius: 24,
                      child: Icon(
                        Icons.delete_forever_outlined,
                        color: Colors.red,
                        size: 28,
                      ),
                    ),
                  ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
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
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  NotificationItem[index]['image']!,
                                ),
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
                                  NotificationItem[index]['title'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  NotificationItem[index]['subtitle'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
