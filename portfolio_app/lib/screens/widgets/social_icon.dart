import 'package:flutter/material.dart';

class SocialIcon extends StatefulWidget {
  final String imagePath;
  final Color color;
  final String link;

  const SocialIcon({super.key, required this.imagePath, required this.color, required this.link});

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
        child: CircleAvatar(
          backgroundColor: _isHovering
              ? widget.color
              : Colors.grey.withOpacity(0.1),
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
    );
  }
}
