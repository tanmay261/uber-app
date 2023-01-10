import 'package:flutter/material.dart';
import 'package:rider_app/screens/login_screen.dart';
import 'package:rider_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Rider App',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

