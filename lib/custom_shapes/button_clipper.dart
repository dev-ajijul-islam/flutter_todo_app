import 'package:flutter/cupertino.dart';

class ButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double curveHeight = 4.5;
    Path path = Path();

    path.moveTo(0, size.height - curveHeight);
    path.quadraticBezierTo(
        size.width / 2, size.height + curveHeight, size.width, size.height - curveHeight);
    path.lineTo(size.width, curveHeight);
    path.quadraticBezierTo(size.width / 2, -curveHeight, 0, curveHeight);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}