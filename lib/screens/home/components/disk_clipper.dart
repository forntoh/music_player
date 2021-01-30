import 'package:flutter/material.dart';

class DiskClipper extends CustomClipper<Path> {
  final double innerRadius;

  DiskClipper({this.innerRadius = 25});

  @override
  Path getClip(Size size) {
    var centerOffser = Offset(size.width / 2, size.width / 2);
    var bigCircle = Path()
      ..addOval(Rect.fromCircle(
        center: centerOffser,
        radius: size.width / 2,
      ));
    var smallCircle = Path()
      ..addOval(Rect.fromCircle(
        center: centerOffser,
        radius: innerRadius,
      ));
    return Path.combine(PathOperation.difference, bigCircle, smallCircle);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
