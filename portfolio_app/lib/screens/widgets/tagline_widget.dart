import 'package:flutter/material.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class TagLineWidget extends StatelessWidget {
  const TagLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color.fromARGB(255, 29, 27, 30),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double fontSize = constraints.maxWidth * 0.1;
            double buttonFontSize = constraints.maxWidth * 0.03;
            double iconSize = constraints.maxWidth * 0.04;

            return Stack(
              children: [
                Center(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Bringing Your Ideas\nTo Life Through\nUI Design',
                        style: TextStyle(
                          letterSpacing: 1.2,
                          wordSpacing: 1.2,
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      html.window.open("https://github.com/Shiru99", "Github");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 131, 38, 252),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Hire Me',
                              style: TextStyle(
                                  fontFamily: 'FiraSans',
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(width: 5),
                        Image.asset('images/hand.png',
                            height: iconSize, width: iconSize),
                      ],
                    ),
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
