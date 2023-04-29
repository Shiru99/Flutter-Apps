import 'package:flutter/material.dart';

class WidgetTitle2 extends StatelessWidget {
  final String title;
  final String value;

  const WidgetTitle2(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double fontSize = constraints.maxWidth * 0.07;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  '$title :',
                  style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: "Poppins",
                      color: Colors.white54),
                ),
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  value,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                      fontSize: fontSize,
                      color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
