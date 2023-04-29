import 'package:flutter/material.dart';

class PortfolioWidget extends StatefulWidget {
  final String imageAsset;
  final String readMoreText = "Read More";

  const PortfolioWidget({
    Key? key,
    required this.imageAsset,
  }) : super(key: key);

  @override
  _PortfolioWidgetState createState() => _PortfolioWidgetState();
}

class _PortfolioWidgetState extends State<PortfolioWidget> {
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
                      style: TextStyle(
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
    );
  }
}