import 'package:flutter/material.dart';

class LoginHeader2ClipPath extends CustomClipper<Path> {
  final double hightIndent = 20;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - hightIndent * 1.5);

    path.quadraticBezierTo(size.width / 4, size.height - hightIndent / 2, size.width / 3, size.height - hightIndent);
    path.quadraticBezierTo(size.width / 1.2, size.height * 1.1, size.width, size.height - hightIndent);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
