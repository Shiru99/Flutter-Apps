import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final int number;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const InfoTile(
      {Key? key,
      required this.number,
      required this.label,
      required this.backgroundColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 33,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: backgroundColor,
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              double fontSize = constraints.maxWidth * 0.25; 
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        '$number+',
                        style: TextStyle(
                          fontSize: fontSize,
                          color: textColor,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        label,
                        style: TextStyle(
                            fontSize: fontSize / 3,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
