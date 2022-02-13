import 'dart:math';

import 'package:flutter/material.dart';

class SinusCurve extends Curve {
  final double frequency;

  const SinusCurve({required this.frequency});
  @override
  double transformInternal(double t) {
    final val = sin(frequency * t);
    return val;
  }
}
