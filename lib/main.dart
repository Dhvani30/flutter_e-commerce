//import 'package:ecommerce/screens/home_page.dart';
import 'package:assignment9/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:assignment9/screens/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: LoginPage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.orange),
        routes: {
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
