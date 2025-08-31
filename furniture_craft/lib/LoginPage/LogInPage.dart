import 'package:flutter/material.dart';
import 'package:furniture_craft/ForgotPage.dart';
import 'package:furniture_craft/main.dart';

import 'SignInPage.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  bool rememberMe = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Center(
              child: Image.asset('images/furniture-store.png',height: 150,width: 150,),
            ),
            SizedBox(height: 30),
          Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),

            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Welcome Back! Please Enter Your Details",
                style: TextStyle(color: Color(0xFF828A89), fontSize: 15),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Enter Your Email",
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
                "Password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: TextField(
                controller: passwordController,

                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter Your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 18, right: 29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        value: rememberMe,
                        onChanged: (Value) {
                          setState(() {
                            rememberMe = Value!;
                          });
                        },
                        activeColor: Colors.lightGreen,
                      ),

                      Text(
                        "Remember For 30 Days",
                        style: TextStyle(
                          color: Color(0xFF828A89),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Forgotpage()),
                      );
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(340, 56),
                  ),
                  onPressed: () {
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Email and password cannot be empty"),
                        ),
                      );
                    } else if (!RegExp(
                      r'^[^@]+@[^@]+\.[^@]+',
                    ).hasMatch(emailController.text)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Please enter a valid email address"),
                        ),
                      );
                    } else {
                      // Proceed with login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MainScreen()),
                      );
                    }
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(340, 56),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (_) => LoginScreen()),
                    // );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/google logo.png", height: 24),
                      SizedBox(width: 5),
                      Text(
                        "Sign In With Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Don't Have An Account?",
                    style: TextStyle(color: Color(0xFF828A89), fontSize: 15),
                  ),
                ),
                SizedBox(width: 7),
                Text(
                  "Sign Up For Free",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
