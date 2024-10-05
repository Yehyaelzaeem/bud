
import 'package:flutter/cupertino.dart';

import '../../resources/styles/styles.dart';

class BlackBoldText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  BlackBoldText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font18Black700Weight.copyWith(fontSize: fontSize ?? 18, color: labelColor),
    );
  }
}

class BlackRegularText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  BlackRegularText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font18Black700Weight.copyWith(fontSize: fontSize ?? 14, color: labelColor),
    );
  }
}

class BlackMediumText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;
  final int maxLines;
  final TextOverflow overflow;

  BlackMediumText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: labelStyle ??
          TextStyles.font18Black700Weight.copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}

class BlackSemiBoldText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final TextStyle? labelStyle;
  final Color? labelColor;
  final double? fontSize;

  BlackSemiBoldText({
    Key? key,
    required this.label,
    this.textAlign = TextAlign.start,
    this.labelStyle,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: labelStyle ??
          TextStyles.font18Black700Weight.copyWith(fontSize: fontSize ?? 16, color: labelColor),
    );
  }
}