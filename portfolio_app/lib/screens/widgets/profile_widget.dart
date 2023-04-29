import 'package:flutter/material.dart';

import '../../models/person.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
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
            color: const Color.fromARGB(255, 131, 38, 252),
            image: DecorationImage(
              image: AssetImage(_person.profileImage),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
