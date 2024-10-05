import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIconButton extends StatelessWidget {
  final dynamic icon;
  final VoidCallback? onPressed;
  final double? size;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const AppIconButton(
      {Key? key,
      required this.icon,
      this.onPressed,
      this.size,
      this.color,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: icon is IconData
              ? Icon(
                  icon,
                  size: size ?? 18,
                  color: color,
                )
              : Image.asset(
                  icon,
                  height: size ?? 18,
                  width: size ?? 18,
                  color: color,
                )),
    );
  }
}
