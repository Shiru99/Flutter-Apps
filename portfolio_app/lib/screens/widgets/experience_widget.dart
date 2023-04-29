import 'package:flutter/material.dart';

import '../../models/person.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    super.key,
    required Person person,
  }) : _person = person;

  final Person _person;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 33,
          child: InfoTile(
            number: _person.yearsOfExperience,
            label: 'Years Experience',
            backgroundColor: const Color.fromARGB(255, 0, 200, 150),
            textColor: Colors.white,
          ),
        ),
        Expanded(
          flex: 33,
          child: InfoTile(
            number: _person.numberOfProjects,
            label: 'Handled Project',
            backgroundColor: const Color.fromARGB(255, 255, 190, 60),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          flex: 33,
          child: InfoTile(
            number: _person.numberOfClients,
            label: 'Clients',
            backgroundColor: const Color.fromARGB(255, 255, 110, 125),
            textColor: Colors.white,
          ),
        )
      ],
    );
  }
}



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
    return Padding(
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
    );
  }
}