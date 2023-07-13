import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.useConstrain = false,
    this.padding,
    this.margin,
    this.width,
    this.height = 45,
    this.color,
    this.gradient,
    this.borderRadius,
    this.boxShadow,
    this.border,
    this.elevation = 0,
    this.icon,
    this.iconColor,
    this.onTap,
    this.splashColor,
    this.inkwellBorderRadius,
    this.alignment = Alignment.center,
    this.child,
  });

  final bool useConstrain;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Color? color;
  final Gradient? gradient;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  Color? splashColor;
  final BorderRadius? inkwellBorderRadius;
  final double? elevation;
  final IconData? icon;
  final Color? iconColor;
  final void Function()? onTap;
  final AlignmentGeometry alignment;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final lightTheme = Theme.of(context).brightness == Brightness.light;

    splashColor ??= Theme.of(context).colorScheme.onBackground.withOpacity(0.2);

    if (useConstrain) return Content();
    return UnconstrainedBox(child: Content());
  }

  Widget Content() {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        border: border,
      ),
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          splashColor: splashColor,
          borderRadius: inkwellBorderRadius,
          child: Container(
            alignment: alignment,
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
