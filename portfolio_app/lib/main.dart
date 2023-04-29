import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      // fontFamily: "Poppins",
    ),
    debugShowCheckedModeBanner: false,
  ));
}
