import 'dart:math' as math;

import 'package:flutter/material.dart';

// 背景デザイン
final backgroundDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.indigo.shade500,
      Colors.blue.shade600,
    ],
    transform: const GradientRotation(110 * math.pi / 180),
  ),
);
