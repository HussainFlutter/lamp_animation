import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.color,
    required this.gradientColor,
    required this.isBulbOn,
    required this.animationDuration,
  });
  final Color color;
  final Color gradientColor;
  final double screenHeight;
  final double screenWidth;
  final bool isBulbOn;
  final Duration animationDuration;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.18,
      left: -screenWidth * 0.9,
      child: ClipPath(
        clipper: LampClipper(),
        child: Column(
          children: [
            Container(
              color: color,
              height: screenHeight * 0.23,
              width: screenWidth * 2,
            ),
            AnimatedContainer(
              duration: animationDuration,
              height: screenHeight * 1,
              width: screenWidth * 2,
              decoration: BoxDecoration(
                gradient: isBulbOn
                    ? LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          gradientColor.withOpacity(0.5),
                          gradientColor.withOpacity(0.05),
                        ],
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LampClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.moveTo(size.width * 0.2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.8, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
