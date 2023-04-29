import 'package:flutter/material.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../models/person.dart';
import 'widget_title1.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
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
                  title: "UI Portfolio",
                  subTitle: "See All"),
            ),
            Expanded(
              flex: 75,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: _person.uiPortfolios
                        .map((portfolio) {
                      return PortfolioSection(
                          imageAsset:
                              portfolio.imageLocation);
                    }).toList(),
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


class PortfolioSection extends StatefulWidget {
  final String imageAsset;
  final String readMoreText = "Read More";

  const PortfolioSection({
    Key? key,
    required this.imageAsset,
  }) : super(key: key);

  @override
  _PortfolioSectionState createState() => _PortfolioSectionState();
}


class _PortfolioSectionState extends State<PortfolioSection> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 33,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: MouseRegion(
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
          child: GestureDetector(
            onTap: () {
              html.window
                  .open("https://github.com/Shiru99", "Social Media Account");
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(widget.imageAsset),
                  fit: BoxFit.cover,
                  colorFilter: _isHovering
                      ? ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken)
                      : null,
                ),
              ),
              child: Center(
                child: _isHovering
                    ? Text(
                        widget.readMoreText,
                        style: const TextStyle(
                          fontFamily: 'FiraSans',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

