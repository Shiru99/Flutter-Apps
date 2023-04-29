import 'package:flutter/material.dart';

class WidgetTitle1 extends StatelessWidget {
  final String title;
  final String subTitle;

  const WidgetTitle1({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = MediaQuery.of(context).size.width;

            double fontSize = 18;

            if (screenWidth < 500) {
              fontSize = 18 * screenWidth / 550;
            }

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                        color: Colors.white),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    subTitle,
                    style: TextStyle(fontSize: fontSize, color: Colors.white54),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
