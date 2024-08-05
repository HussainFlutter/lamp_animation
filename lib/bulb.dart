import 'package:flutter/material.dart';

class Bulb extends StatelessWidget {
  final Color onColor;
  final Color offColor;
  final double height;
  final double width;
  final bool isBulbOn;
  final Duration animationDuration;
  const Bulb({
    super.key,
    required this.onColor,
    required this.offColor,
    required this.height,
    required this.width,
    required this.isBulbOn,
    required this.animationDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * 0.37,
      left: width * 0.22,
      child: AnimatedContainer(
        duration: animationDuration,
        height: height * 0.1,
        width: width * 0.2,
        decoration: BoxDecoration(
          color: isBulbOn ? onColor : offColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
