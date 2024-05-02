import 'dart:math';
import 'package:flutter/material.dart';

class BackgroundColors {
  static final List<Color> blueShades = [
    const Color(0xFF83BEFF),
    const Color(0xFF6EAEFE),
    const Color(0xFF5D9EFE),
    const Color(0xFF4F92FE),
    const Color(0xFF4387FE),
    const Color(0xFF3A7DFE),
    const Color(0xFF3474FE),
    const Color(0xFF2F6BFE),
    const Color(0xFF2A62FE),
    const Color(0xFF2759FE),
    const Color(0xFF2451FE),
    const Color(0xFF2149FE),
    const Color(0xFF1E41FE),
  ];

  static final Random random = Random();

  static Color getRandomBlueShade() {
    blueShades.shuffle(random);
    return blueShades.first;
  }

  static Widget getBackgroundWidget() {
    return Container(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          center: Alignment.center,
          startAngle: 0,
          endAngle: pi * 2,
          colors: blueShades,
        ),
      ),
    );
  }

  static getBackgroundColor() {}
}
