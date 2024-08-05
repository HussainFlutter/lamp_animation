import 'package:flutter/material.dart';
import 'package:lamp_animation/lamp.dart';

import 'bulb.dart';
import 'lamp_button.dart';
import 'lamp_wire.dart';

// Colors that i have used
const darkGray = Color(0xff232323);
const bulbOnColor = Color(0xffFFE12C);
const bulbOffColor = Color(0xffC1C1C1);
const gradientStartColor = Color(0xffFDF380);
const gradientEndColor = Color(0xFFFFFFED);
//Duration of the animation
const animationDuration = Duration(milliseconds: 200);

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  bool isBulbOn = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            LampWire(
              color: darkGray,
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
            Bulb(
              animationDuration: animationDuration,
              onColor: bulbOnColor,
              offColor: bulbOffColor,
              height: screenHeight,
              width: screenWidth,
              isBulbOn: isBulbOn,
            ),
            Lamp(
              animationDuration: animationDuration,
              isBulbOn: isBulbOn,
              gradientColor: gradientStartColor,
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              color: darkGray,
            ),
            LampButton(
              onChanged: (value) {
                // Use your state management solution here.
                isBulbOn = value;
                setState(() {});
              },
              animationDuration: animationDuration,
              bulbButtonColor: darkGray,
              bulbOnColor: bulbOnColor,
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              color: darkGray,
              isBulbOn: isBulbOn,
            ),
          ],
        ),
      ),
    );
  }
}
