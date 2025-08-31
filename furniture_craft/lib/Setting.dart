import 'package:flutter/material.dart';

import 'main.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  final List<Map<String, dynamic>> SettingItem = [
    {'icon': Icons.notification_add_outlined, 'title': "Notifications"},
    {'icon': Icons.email_outlined, 'title': "Email Settings"},
    {'icon': Icons.map, 'title': "manage addresses"},
    {'icon': Icons.payment, 'title': "manage payment"},
    {'icon': Icons.radio_button_checked, 'title': "data control"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 25),
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
                padding: const EdgeInsets.only(top: 50.0, left: 90),
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: SettingItem.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ListTile(
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    leading: Icon(SettingItem[index]['icon']),
                    title: Text(SettingItem[index]["title"]),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
