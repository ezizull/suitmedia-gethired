import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({
    super.key,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.color,
    this.gradient,
    this.onPressed,
    this.splashColor,
    this.elevation = 0,
    this.icon,
    this.iconColor,
    this.iconSize,
  });

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Color? color;
  final Gradient? gradient;
  final void Function()? onPressed;
  final Color? splashColor;
  final double? elevation;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        shape: BoxShape.circle,
      ),
      child: FloatingActionButton(
        onPressed: onPressed,
        heroTag: null,
        backgroundColor: color ?? Colors.transparent,
        shape: const StadiumBorder(),
        elevation: elevation,
        splashColor: splashColor ?? Theme.of(context).splashColor,
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }
}
