// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutable

      // TIP :- Use center to align everything instead of Cross-Axis-Alignment
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Image(
                    image: AssetImage("images/logo.png"),
                    width: 300.0,
                    height: 300.0,
                    // alignment: Alignment.bottomCenter,
                  ),
                  Text(
                    "User login through Email",
                    style: TextStyle(fontSize: 25.0, fontFamily: "Brand-Bold"),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.yellow)),
                      onPressed: () {
                        log("Login button pressed");
                      },
                      child: Text(
                        "Submit ",
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      log("No Account button Pressed");
                    },
                    child: Text(
                      "Do not have an Account ? Register Here ",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
