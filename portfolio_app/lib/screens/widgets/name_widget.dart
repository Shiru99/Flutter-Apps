import 'package:flutter/material.dart';

import '../../models/person.dart';
import 'widget_title2.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required Person person,
  }) : _person = person;

  final Person _person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(
                  15.0),
          color: const Color.fromARGB(
              255, 29, 27, 30),
        ),
        child:
            WidgetTitle2(
                title: "Name",
                value: _person.name),
      ),
    );
  }
}

