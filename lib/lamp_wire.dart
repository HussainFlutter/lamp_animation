import 'package:flutter/material.dart';

class LampWire extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final Color color;
  const LampWire({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.25,
      child: Container(
        height: screenHeight * 0.18,
        width: screenWidth * 0.06,
        color: color,
      ),
    );
  }
}
