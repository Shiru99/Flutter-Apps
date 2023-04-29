import 'package:flutter/material.dart';

import '../../models/person.dart';
import 'widget_title1.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    super.key,
    required Person person,
  }) : _person = person;

  final Person _person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color.fromARGB(255, 29, 27, 30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 25,
              child: WidgetTitle1(
                  title: "About", subTitle: "Resume"),
            ),
            Expanded(
              flex: 75,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 21.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(15.0),
                  ),
                  child: Scrollbar(
                    thumbVisibility: false,
                    child: SingleChildScrollView(
                      child: Text(
                        _person.aboutMe,
                        style: const TextStyle(
                            wordSpacing: 0,
                            letterSpacing: 0,
                            height: 1.9,
                            fontSize: 10.5,
                            fontFamily: "Poppins",
                            color: Colors.white54),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}