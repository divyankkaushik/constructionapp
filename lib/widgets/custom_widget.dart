import 'package:flutter/material.dart';


class CustomWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double radius;
  final double width;
  final Function onTap;
  final RadialGradient gradient;
  CustomWidget({
    this.child,
    this.height,
    this.radius,
    this.width,
    this.onTap,
    this.gradient,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10.0,
              offset: Offset(5, 5),
              spreadRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.white38,
              blurRadius: 10.0,
              offset: Offset(-5, -5),
              spreadRadius: 1.0,
            ),
          ],
          gradient: gradient,
        ),
        child: child,
      ),
    );
  }
}
