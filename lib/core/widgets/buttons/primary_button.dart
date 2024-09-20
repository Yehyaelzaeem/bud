

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String? title;
  final Function()? onPressed;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final double? elevation;
  final double? radius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final double? fontSize;
  final bool isFixedSize;
  const PrimaryButton({Key? key, this.title, this.onPressed, this.height = 55, this.backgroundColor, this.borderRadius, this.elevation, this.radius, this.margin, this.style, this.fontSize, this.width, this.padding, this.isFixedSize = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??  BorderRadius.all(Radius.circular(radius ?? 12))
          ),
          fixedSize: isFixedSize ? Size(width ?? double.infinity, height!) : null,
          minimumSize: isFixedSize ? Size(width ?? double.infinity, height!) : null,
          foregroundColor: AppColors.cardColor,
          padding: padding ?? EdgeInsets.zero,
        ),
        child: FittedBox(child: Text(title!, style: style )),
      ),
    );
  }
}
