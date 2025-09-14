import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shoe_store/screen/begin_screen.dart';

import 'package:flutter_shoe_store/screen/splash_screen.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Screen",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                "Welcome to my store",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffD2D2D2))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                        BorderSide(color: Color(0xff2D96FF), width: 2)),
                    hintText: "Phone number ",
                    fillColor: Colors.white,
                    filled: true),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: isShow,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key_rounded),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isShow) {
                            isShow = false;
                          } else {
                            isShow = true;
                          }
                        });
                      },
                      icon: isShow
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffD2D2D2))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                        BorderSide(color: Color(0xff2D96FF), width: 2)),
                    hintText: "Press enter your password....",
                    fillColor: Colors.white,
                    filled: true),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xff2D96FF),
                  ),
                  onPressed: () {},
                  child: Text("Forget password")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xffffffFF),
                      backgroundColor: Color(0xff2D96FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      //Modify border button
                      fixedSize: Size(double.maxFinite, 20)),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => BeginScreen()),
                          (route) => false,); //Remove all last pages
                  },
                  child: Text("Login")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have any account?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Color(0xff2D96FF),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text("Create account")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
