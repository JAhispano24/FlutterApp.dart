import 'package:flutter/material.dart';
import 'package:food_ordering/pages/CartPage.dart';
import 'package:food_ordering/pages/FeedbackPage.dart';
import 'package:food_ordering/pages/GetStartedPage.dart'; // Import GetStartedPage.dart
import 'package:food_ordering/pages/HomePage.dart';
import 'package:food_ordering/pages/ItemPage.dart';
import 'package:food_ordering/pages/PaymentSelectPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFD7CE9),
      ),
      initialRoute: '/getstartedPage',
      routes: {
        "/": (context) => HomePage(),
        "/getstartedPage": (context) => GetStartedPage(), 
        "/homePage": (context) => HomePage(), 
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "feedbackPage": (context) => FeedbackPage(),
        "paymentselectPage": (context) => PaymentSelectPage(),
      },
    );
  }
}