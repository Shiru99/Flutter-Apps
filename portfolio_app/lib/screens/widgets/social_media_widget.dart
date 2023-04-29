import 'package:flutter/material.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../models/person.dart';
import '../../models/social_media.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
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
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _person.socialMedia.map((socialMedia) {
                String imagePath =
                    SocialMedia.getSocialMediaImagePath(socialMedia.platform);
                return SocialIcon(
                  imagePath: imagePath,
                  color: socialMedia.primaryColor,
                  link: socialMedia.link,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatefulWidget {
  final String imagePath;
  final Color color;
  final String link;

  const SocialIcon(
      {super.key,
      required this.imagePath,
      required this.color,
      required this.link});

  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: GestureDetector(
          onTap: () {
            html.window.open(widget.link, "Social Media Account");
          },
          child: CircleAvatar(
            backgroundColor:
                _isHovering ? widget.color : Colors.grey.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.contain,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
