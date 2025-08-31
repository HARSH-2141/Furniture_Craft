import 'package:flutter/material.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({super.key});

  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
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
                  padding: EdgeInsets.only(top: 50.0,right: 70),
                  child: Text(
                    "Change Password",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Current Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter Your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "New Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter Your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Confirm New Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter New Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 380,),
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
                  "Change Password",
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
