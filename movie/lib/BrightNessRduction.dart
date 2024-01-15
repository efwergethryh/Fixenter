import 'dart:ui';
import 'package:flutter/material.dart';

class BrightnessReducer extends ColorFilter {
  BrightnessReducer(double brightness)
      : super.matrix(<double>[
          // Color matrix coefficients
          0.5, 0.0, 0.0, 0.0, brightness,
          0.0, 0.5, 0.0, 0.0, brightness,
          0.0, 0.0, 0.5, 0.0, brightness,
          0.0, 0.0, 0.0, 1.0, 0.0,
        ]);
}
