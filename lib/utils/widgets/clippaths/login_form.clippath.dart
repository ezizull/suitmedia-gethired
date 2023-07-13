import 'package:flutter/material.dart';

class LoginFormClipPath extends CustomClipper<Path> {
  final double hightIndent = 30;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(0, hightIndent / 1.2);

    path.quadraticBezierTo(size.width / 8, hightIndent * 2, size.width / 2, hightIndent / 1.4);
    path.quadraticBezierTo(size.width / 1.3, 0, size.width, hightIndent);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
