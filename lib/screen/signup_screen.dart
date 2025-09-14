import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shoe_store/screen/login_screen.dart';
import 'begin_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xffF5F6FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
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
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                  ],
                  decoration: inputDecorationFunc("Username")),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.numberWithOptions(),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly, // فقط عدد
                  LengthLimitingTextInputFormatter(11), // حداکثر ۱۱ رقم
                ],
                decoration: inputDecorationFunc("Phone number"),
              ),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-Z0-9@._-]'),
                  ),
                ],
                decoration: inputDecorationFunc("Email"),
              ),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.visiblePassword,
                obscureText: false,
                decoration: inputDecorationFunc("Press enter your password..."),
              ),
              TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: false,
                  decoration: inputDecorationFunc("Confirm password...")),
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
                      (route) => false,
                    );
                  },
                  child: Text("Sign up")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have account?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Color(0xff2D96FF),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text("Login")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecorationFunc(String hintText) {
    return InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD2D2D2))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color(0xff2D96FF), width: 2)),
        hintText: hintText,
        fillColor: Colors.white,
        filled: true);
  }
}
