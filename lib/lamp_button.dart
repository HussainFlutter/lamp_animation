import 'dart:math' as math show pi;

import 'package:flutter/material.dart';

class LampButton extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final Color color;
  final Color bulbOnColor;
  final bool isBulbOn;
  final Color bulbButtonColor;
  final Duration animationDuration;
  final void Function(bool) onChanged;
  const LampButton({
    super.key,
    required this.onChanged,
    required this.screenHeight,
    required this.screenWidth,
    required this.color,
    required this.isBulbOn,
    required this.bulbOnColor,
    required this.bulbButtonColor,
    required this.animationDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.4,
      left: screenWidth * 0.4,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.19),
            child: Transform.rotate(
              angle: math.pi / 2,
              child: SizedBox(
                child: Switch(
                  trackOutlineColor:
                      MaterialStateProperty.all(Colors.transparent),
                  activeColor: bulbButtonColor,
                  activeTrackColor: bulbOnColor,
                  inactiveTrackColor: Colors.grey,
                  inactiveThumbColor: bulbButtonColor,
                  value: isBulbOn,
                  onChanged: onChanged,
                ),
              ),
            ),
          ),
          AnimatedContainer(
            duration: animationDuration,
            color: color,
            height: isBulbOn ? screenHeight * 0.23 : screenHeight * 0.21,
            width: screenWidth * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.38),
            child: Transform.rotate(
              angle: math.pi + math.pi / 2,
              child: const Text(
                "LIVING ROOM",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
