import 'package:flutter/material.dart';

class LoginHeader1ClipPath extends CustomClipper<Path> {
  final double hightIndent = 35;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - hightIndent);

    path.quadraticBezierTo(size.width / 2.8, size.height + hightIndent, size.width / 1.7, size.height - hightIndent);
    path.quadraticBezierTo(size.width / 1.5, size.height - hightIndent * 1.7, size.width, size.height - hightIndent);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
