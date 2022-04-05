import 'dart:math';
import 'package:places/domain/location.dart';

class Utils {

  static double calcDistance(Location point1, Location point2) {
    const factorY = 40000 / 360;
    final factorX = cos(pi * point1.lat / 180.0) * factorY;
    final deltaX = (point1.lon- point2.lon).abs() * factorX;
    final deltaY = (point1.lat - point2.lat).abs() * factorY;

    return sqrt(deltaX * deltaX + deltaY * deltaY);
  }

  static bool   isPointInRingArea({
    required Location point,
    required Location center,
    required double minRadius,
    required double maxRadius,
  }) {
    final distance = calcDistance(center, point);

    return distance >= minRadius && distance <= maxRadius;
  }
}
