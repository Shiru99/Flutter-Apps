import 'package:flutter/material.dart';

class BimGraphWidget extends StatelessWidget {
  const BimGraphWidget({
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Bim',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white38,
                      ),
                    ),
                    TextSpan(
                      text: 'Graph',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.menu, color: Colors.white60, size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
