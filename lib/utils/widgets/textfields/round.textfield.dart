import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class RoundTextField extends StatelessWidget {
  static const Offset defaultShadowOffet = Offset(0, 0);
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets defaultContentPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  RoundTextField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.onChanged,
    required this.margin,
    this.shadowColor,
    this.shadowOffset = defaultShadowOffet,
    this.shadowOpacity = 0.1,
    this.shadowSigma,
    required this.hintText,
    this.contentPadding = defaultContentPadding,
    this.fillColor,
    this.errorText,
    this.borderRadius = defaultBorderRadius,
    this.enabledBorderSide,
    this.focusedBorderSide,
    this.suffix,
    this.suffixIconColor,
    this.prefix,
    this.prefixIconColor,
  });

  final TextEditingController? controller;
  final bool obscureText;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? margin;
  final Color? shadowColor;
  final Offset shadowOffset;
  final double shadowOpacity;
  double? shadowSigma;
  final String? hintText;
  final EdgeInsetsGeometry? contentPadding;
  Color? fillColor;
  final String? errorText;
  final BorderSide? enabledBorderSide;
  final BorderSide? focusedBorderSide;
  final BorderRadius borderRadius;
  final Widget? suffix;
  final Color? suffixIconColor;
  final Widget? prefix;
  final Color? prefixIconColor;

  @override
  Widget build(BuildContext context) {
    final lightTheme = Theme.of(context).brightness == Brightness.light;

    fillColor ??= Theme.of(context).cardColor;
    shadowSigma ??= lightTheme ? 12 : 6;

    return Container(
      margin: margin,
      child: SimpleShadow(
        color: shadowColor ?? Theme.of(context).colorScheme.onBackground,
        offset: shadowOffset,
        opacity: shadowOpacity,
        sigma: shadowSigma!,
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: contentPadding,
            fillColor: fillColor,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            errorText: errorText,
            filled: fillColor != null,
            errorStyle: Theme.of(context).inputDecorationTheme.errorStyle,
            errorBorder: OutlineInputBorder(
              borderSide: enabledBorderSide ?? BorderSide(color: Theme.of(context).colorScheme.error),
              borderRadius: borderRadius,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: enabledBorderSide ?? const BorderSide(color: Colors.transparent),
              borderRadius: borderRadius,
            ),
            focusColor: Theme.of(context).inputDecorationTheme.focusColor,
            focusedBorder: OutlineInputBorder(
              borderSide: focusedBorderSide ?? const BorderSide(color: Colors.transparent),
              borderRadius: borderRadius,
            ),
            suffixIcon: suffix,
            suffixIconColor: suffixIconColor,
            prefixIcon: prefix,
            prefixIconColor: prefixIconColor,
          ),
        ),
      ),
    );
  }
}
